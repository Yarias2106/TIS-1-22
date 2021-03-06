# Generated by Django 4.0.3 on 2022-05-07 01:59

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Aula',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Cant_Estudiante', models.IntegerField()),
                ('Cod_Aula', models.CharField(max_length=60, null=True)),
                ('Tipo_Aula', models.CharField(max_length=60, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Docente',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Docente', models.CharField(max_length=50)),
                ('apellido_Docente', models.CharField(max_length=50)),
                ('email', models.CharField(max_length=80)),
                ('contraseña', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Materia',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Nombre', models.CharField(max_length=60)),
                ('Carrera', models.CharField(max_length=60)),
            ],
        ),
        migrations.CreateModel(
            name='Reserva',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cant_Periodos', models.IntegerField()),
                ('Fecha_Reserva', models.DateField(null=True)),
                ('Hora_Reserva', models.TimeField()),
                ('Fecha_Solicitud_Res', models.DateField()),
                ('Hora_Solicitud_Res', models.TimeField(null=True)),
                ('motivo', models.CharField(max_length=256)),
                ('Cant_Est_Sol', models.IntegerField()),
                ('Cod_Aula', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='GestionDB.aula')),
                ('Cod_Docente', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='GestionDB.docente')),
            ],
        ),
        migrations.CreateModel(
            name='Grupo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Cant_Inscritos', models.IntegerField(null=True)),
                ('Cod_Grupo', models.CharField(max_length=60, null=True)),
                ('Cod_Docente', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='GestionDB.docente')),
                ('Cod_Materia', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='GestionDB.materia')),
            ],
        ),
    ]
