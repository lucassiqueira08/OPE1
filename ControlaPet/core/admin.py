from django.contrib import admin
from core.models import *
from django.contrib.auth.admin import UserAdmin
from django import forms

class NovoProprietario(forms.ModelForm):
    class Meta:
        model = Proprietario, Telefoneproprietario
        fields = ('nome', 'datanasc', 'cpf', 'email', 'observacao', 'logradouro', 'bairro', 'cidade', 'estado', 'cep', 'telefone')

    def save(self, commit=True):
        user = super(NovoProprietarioForm, self).save(commit=False)
        user.set_password('123@mudar')
        user.user_type = 'Cliente'
        if commit:
            user.save()
        return user


class AlterarProprietarioForm(forms.ModelForm):
    class Meta:
        model = Proprietario
        fields = ('datanasc', 'cpf', 'email', 'observacao', 'logradouro', 'bairro', 'cidade', 'estado', 'cep', 'telefone')


class ProprietarioAdmin(UserAdmin):
    form = AlterarProprietarioForm
    add_form = NovoProprietarioForm
    list_display = ('nome', 'datanasc', 'cpf', 'email', 'observacao', 'logradouro', 'bairro', 'cidade', 'estado', 'cep', 'telefone')
    list_filter = ('user_type',)
    fieldsets = ((None, {'fields': ('datanasc', 'cpf', 'email', 'observacao', 'logradouro', 'bairro', 'cidade', 'estado', 'cep', 'telefone')}),)
    add_fieldsets = (
        (None, {'fields': ('nome', 'datanasc', 'cpf', 'email', 'observacao', 'logradouro', 'bairro', 'cidade', 'estado', 'cep', 'telefone')}),)
    search_fields = ('email',)
    ordering = ('email',)
    filter_horizontal = ()
admin.site.register(Proprietario, ProprietarioAdmin)



