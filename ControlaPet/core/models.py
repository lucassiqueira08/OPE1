from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
# CONFIGURAÇÃO DAS CLASSES DE USUARIO (SERÃO USADAS EM TODOS OS PERFIS DE CADASTRO COM USUARIOS)
# EXEMPLO: PROFESSOR, COORDENADOR E ALUNO
# ESSA CONFIGURAÇÃO COMEÇA NA LINHA 8 E TERMINA NA LINHA 52.

class UsuarioManager(BaseUserManager):
    use_in_migrations = True

    def _create_user(self, cpf, password, **extra_fields):
        if not cpf:
            raise ValueError('CPF precisa ser preenchido')
        user = self.model(cpf=cpf, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_user(self, cpf, password=None, **extra_fields):
        return self._create_user(cpf, password, **extra_fields)

    def create_superuser(self, cpf, password, **extra_fields):
        return self._create_user(cpf, password, **extra_fields)


class Usuario(AbstractBaseUser):
    nome = models.CharField('Nome', max_length=100, blank=True)
    datanasc = models.CharField('Data nascimento', max_length=10, blank=True, null=True)    
    cpf = models.IntegerField('CPF', unique=True)
    password = models.CharField(max_length=150)
    user_type = models.CharField(
        'Tipo de usuário', max_length=5, default='Admin')
    ativo = models.BooleanField('Ativo', default=True)
    email = models.EmailField('E-mail', unique=True)


    def __str__(self):
        return self.nome

    def get_full_name(self):
        return self.nome

    def get_short_name(self):
        return self.nome

    def has_perm(self, perm, obj=None):
        return True

    def has_module_perms(self, app_label):
        return True

    @property
    def is_staff(self):
        return self.user_type == 'Admin'

    USERNAME_FIELD = 'cpf'
    REQUIRED_FIELDS = ['nome', 'email']
    objects = UsuarioManager()



class Funcionario(Usuario):
    parent_link = models.OneToOneField(Usuario, primary_key=True, db_column='user_id', parent_link=True)
    apelido = models.CharField(max_length=30, blank=True, null=True)
    cargo = models.CharField(max_length=50, blank=True, null=True)
    situacao = models.CharField(max_length=30, blank=True, null=True)

    def __str__(self):
        return format(self.nome)    

class Proprietario(Usuario):
    parent_link = models.OneToOneField(Usuario, primary_key=True, db_column='user_id', parent_link=True)
    observacao = models.CharField(max_length=300, blank=True, null=True)
    logradouro = models.CharField(max_length=100)
    bairro = models.CharField(max_length=50)
    cidade = models.CharField(max_length=50)
    estado = models.CharField(max_length=30)
    cep = models.CharField(max_length=8, blank=True, null=True)

    def __str__(self):
        return format(self.nome)   

class Status(models.Model):
    tipo = models.CharField(max_length=10)

    def __str__(self):
        return self.tipo        


class Animal(models.Model):
    nome = models.CharField(max_length=50)
    peso = models.FloatField(blank=True, null=True)
    sexo = models.CharField(max_length=9)
    cor = models.CharField(max_length=30)
    nummicrochip = models.CharField(db_column='numMicrochip', unique=True, max_length=15, blank=True, null=True)  # Field name made lowercase.
    especie = models.CharField(max_length=50)
    observacao = models.CharField(max_length=300, blank=True, null=True)
    datanasc = models.CharField(db_column='dataNasc', max_length=10, blank=True, null=True)  # Field name made lowercase.
    raca = models.CharField(max_length=50)
    idproprietario = models.ForeignKey('Proprietario', models.DO_NOTHING, db_column='idProprietario', blank=True, null=True)  # Field name made lowercase.
    idstatus = models.ForeignKey('Status', models.DO_NOTHING, db_column='idStatus', blank=True, null=True)

    def __str__(self):
        return self.nome 

class Hotel(models.Model):
    telefone = models.CharField(max_length=18)
    datafimhospedagem = models.CharField(db_column='dataFimHospedagem', max_length=10)  # Field name made lowercase.
    datainiciohospedagem = models.CharField(db_column='dataInicioHospedagem', max_length=10)  # Field name made lowercase.
    observacao = models.CharField(max_length=300, blank=True, null=True)
    valordiaria = models.DecimalField(db_column='valorDiaria', max_digits=5, decimal_places=2)  # Field name made lowercase.
    idfuncionario = models.ForeignKey(Funcionario, models.DO_NOTHING, db_column='idFuncionario', blank=True, null=True)  # Field name made lowercase.
    idanimal = models.ForeignKey(Animal, models.DO_NOTHING, db_column='idAnimal', blank=True, null=True)  # Field name made lowercase.

    def __str__(self):
        return None


class Diagnostico(models.Model):
    descdiagnostico = models.CharField(max_length=300)
    datadiagnostico = models.CharField(db_column='dataDiagnostico', max_length=10)  # Field name made lowercase.
    prescricao = models.CharField(max_length=300, blank=True, null=True)
    diagnostico = models.CharField(max_length=20)
    idanimal = models.ForeignKey(Animal, models.DO_NOTHING, db_column='idAnimal', blank=True, null=True)  # Field name made lowercase.

    def __str__(self):
        return descdiagnostico       


class Historicodedoencas(models.Model):
    nomedoenca = models.CharField(db_column='nomeDoenca', max_length=50)  # Field name made lowercase.
    descricao = models.CharField(max_length=300, blank=True, null=True)
    data = models.CharField(max_length=10)
    idanimal = models.ForeignKey(Animal, models.DO_NOTHING, db_column='idAnimal', blank=True, null=True)  # Field name made lowercase.

    def __str__(self):
        return format(self.nome)



class Procedimento(models.Model):
    valor = models.DecimalField(max_digits=7, decimal_places=2, blank=True, null=True)
    descricao = models.CharField(max_length=300, blank=True, null=True)
    nomeprocedimento = models.CharField(db_column='nomeProcedimento', max_length=50, blank=True, null=True)  # Field name made lowercase.
    data = models.CharField(max_length=10, blank=True, null=True)
    idanimal = models.ForeignKey(Animal, models.DO_NOTHING, db_column='idAnimal', blank=True, null=True)  # Field name made lowercase.

    def __str__(self):
        return format(self.nome)



class Agenda(models.Model):
    nometarefa = models.CharField(db_column='nomeTarefa', max_length=50)  # Field name made lowercase.
    nomeanimal = models.ForeignKey('Animal', models.DO_NOTHING, db_column='nomeAnimal', blank=True, null=True)
    responsavel = models.CharField(max_length=50)
    datahora = models.DateTimeField(db_column='dataHora', blank=True, null=True)  # Field name made lowercase.
    motivo = models.CharField(max_length=100, blank=True, null=True)
    destinatario = models.CharField(max_length=100, blank=True, null=True)
    endereco = models.CharField(max_length=100, blank=True, null=True)
    idfuncionario = models.ForeignKey('Funcionario', models.DO_NOTHING, db_column='idFuncionario', blank=True, null=True)  # Field name made lowercase.

    def __str__(self):
        return self.nomeanimal

class Responsavelprocedimento(models.Model):
    idprocedimento = models.ForeignKey(Procedimento, models.DO_NOTHING, db_column='idProcedimento')  # Field name made lowercase.
    idfuncionario = models.ForeignKey(Funcionario, models.DO_NOTHING, db_column='idFuncionario')  # Field name made lowercase.

    class Meta:
        unique_together = (('idprocedimento', 'idfuncionario'),)   

    def __str__(self):
        return self.nome    


class Telefoneproprietario(models.Model):
    telefone = models.CharField(primary_key=True, max_length=18)
    idproprietario = models.ForeignKey(Proprietario, models.DO_NOTHING, db_column='idProprietario')  # Field name made lowercase.

    class Meta:
        unique_together = (('telefone', 'idproprietario'),)

    def __str__(self):
        return self.nome    


"---------------------------------------------------------------------------------------------------------------------------------------------------------------------"
class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'
             