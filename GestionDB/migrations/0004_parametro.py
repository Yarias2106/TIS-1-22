# Generated by Django 3.2.8 on 2022-05-25 01:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('GestionDB', '0003_reserva_justificacion'),
    ]

    operations = [
        migrations.CreateModel(
            name='Parametro',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Minimo', models.IntegerField()),
                ('Maximo', models.IntegerField()),
            ],
        ),
    ]
