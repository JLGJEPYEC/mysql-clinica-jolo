# Generated by Django 3.0.2 on 2020-02-02 20:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('appclinica1', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Internamientos',
            fields=[
                ('fecha_inicio', models.DateTimeField(db_column='FECHA_INICIO')),
                ('fecha_fin', models.DateTimeField(db_column='FECHA_FIN')),
                ('motivo', models.CharField(db_column='MOTIVO', max_length=45)),
                ('habitacion', models.IntegerField(db_column='HABITACION')),
                ('piso', models.IntegerField(db_column='PISO')),
                ('servicio', models.OneToOneField(db_column='SERVICIO_ID', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='appclinica1.Servicio')),
            ],
            options={
                'db_table': 'internamientos',
                'managed': False,
            },
        ),
        migrations.DeleteModel(
            name='AuthGroup',
        ),
        migrations.DeleteModel(
            name='AuthGroupPermissions',
        ),
        migrations.DeleteModel(
            name='AuthPermission',
        ),
        migrations.DeleteModel(
            name='AuthUser',
        ),
        migrations.DeleteModel(
            name='AuthUserGroups',
        ),
        migrations.DeleteModel(
            name='AuthUserUserPermissions',
        ),
        migrations.DeleteModel(
            name='DjangoAdminLog',
        ),
        migrations.DeleteModel(
            name='DjangoContentType',
        ),
        migrations.DeleteModel(
            name='DjangoMigrations',
        ),
        migrations.DeleteModel(
            name='DjangoSession',
        ),
        migrations.DeleteModel(
            name='Internamiento',
        ),
    ]
