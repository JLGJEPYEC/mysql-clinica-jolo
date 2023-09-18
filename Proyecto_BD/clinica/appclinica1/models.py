# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

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
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
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


class Camas(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    letra = models.CharField(db_column='LETRA', max_length=1)  # Field name made lowercase.
    descripcion = models.CharField(db_column='DESCRIPCION', max_length=45)  # Field name made lowercase.
    estado = models.CharField(db_column='ESTADO', max_length=45)  # Field name made lowercase.
    habitacion = models.ForeignKey('Habitacion', models.DO_NOTHING, db_column='habitacion_ID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'camas'


class Cargo(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='NOMBRE', max_length=45)  # Field name made lowercase.
    pago = models.FloatField(db_column='PAGO')  # Field name made lowercase.
    descripcion = models.CharField(db_column='DESCRIPCION', max_length=45)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'cargo'


class Citas(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    fecha_registro = models.DateTimeField(db_column='FECHA_REGISTRO')  # Field name made lowercase.
    fecha_cita = models.DateTimeField(db_column='FECHA_CITA')  # Field name made lowercase.
    asistio = models.IntegerField(db_column='ASISTIO', blank=True, null=True)  # Field name made lowercase.
    medico = models.ForeignKey('Medicos', models.DO_NOTHING, db_column='MEDICO')  # Field name made lowercase.
    paciente = models.ForeignKey('Pacientes', models.DO_NOTHING, db_column='PACIENTE')  # Field name made lowercase.
    empleado_dni = models.ForeignKey('Empleados', models.DO_NOTHING, db_column='EMPLEADO_DNI')  # Field name made lowercase.
    motivo = models.CharField(db_column='MOTIVO', max_length=45)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'citas'


class Consultas(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    fecha_registro = models.DateTimeField(db_column='FECHA_REGISTRO')  # Field name made lowercase.
    paciente = models.ForeignKey('Pacientes', models.DO_NOTHING, db_column='PACIENTE')  # Field name made lowercase.
    medico = models.ForeignKey('Medicos', models.DO_NOTHING, db_column='MEDICO')  # Field name made lowercase.
    especialidad = models.ForeignKey('Especialidades', models.DO_NOTHING, db_column='ESPECIALIDAD')  # Field name made lowercase.
    empleado_dni = models.ForeignKey('Empleados', models.DO_NOTHING, db_column='EMPLEADO_DNI')  # Field name made lowercase.
    motivo = models.CharField(db_column='MOTIVO', max_length=45)  # Field name made lowercase.
    servicio = models.ForeignKey('Servicio', models.DO_NOTHING, db_column='servicio_ID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'consultas'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
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


class Empleados(models.Model):
    dni = models.IntegerField(db_column='DNI', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='NOMBRE', max_length=45)  # Field name made lowercase.
    apellidos = models.CharField(db_column='APELLIDOS', max_length=45)  # Field name made lowercase.
    telefono = models.CharField(db_column='TELEFONO', max_length=45)  # Field name made lowercase.
    direccion = models.CharField(db_column='DIRECCION', max_length=45)  # Field name made lowercase.
    cargo = models.ForeignKey(Cargo, models.DO_NOTHING, db_column='CARGO_ID')  # Field name made lowercase.
    fecha_ingreso = models.DateField(db_column='FECHA_INGRESO')  # Field name made lowercase.
    fecha_desp = models.DateTimeField(db_column='FECHA_DESP', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'empleados'


class Especialidades(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='NOMBRE', max_length=45)  # Field name made lowercase.
    fecha_creacion = models.DateField(db_column='FECHA_CREACION')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'especialidades'


class Habitacion(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    numero = models.IntegerField(db_column='NUMERO')  # Field name made lowercase.
    descripcion = models.CharField(db_column='DESCRIPCION', max_length=45)  # Field name made lowercase.
    pisos = models.ForeignKey('Pisos', models.DO_NOTHING, db_column='pisos_ID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'habitacion'


class HistoriasClinicas(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    fecha_reg = models.DateTimeField(db_column='FECHA_REG')  # Field name made lowercase.
    paciente = models.ForeignKey('Pacientes', models.DO_NOTHING, db_column='PACIENTE')  # Field name made lowercase.
    peso = models.FloatField(db_column='PESO')  # Field name made lowercase.
    talla = models.FloatField(db_column='TALLA')  # Field name made lowercase.
    descripcion = models.CharField(db_column='DESCRIPCION', max_length=100)  # Field name made lowercase.
    imc = models.FloatField(db_column='IMC', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'historias_clinicas'


class Internamientos(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    fecha_inicio = models.DateTimeField(db_column='FECHA_INICIO')  # Field name made lowercase.
    fecha_fin = models.DateTimeField(db_column='FECHA_FIN')  # Field name made lowercase.
    paciente = models.ForeignKey('Pacientes', models.DO_NOTHING, db_column='PACIENTE')  # Field name made lowercase.
    motivo = models.CharField(db_column='MOTIVO', max_length=45)  # Field name made lowercase.
    cama = models.ForeignKey(Camas, models.DO_NOTHING, db_column='CAMA')  # Field name made lowercase.
    empleado_dni = models.ForeignKey(Empleados, models.DO_NOTHING, db_column='EMPLEADO_DNI')  # Field name made lowercase.
    servicio = models.ForeignKey('Servicio', models.DO_NOTHING, db_column='servicio_ID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'internamientos'


class Intervenciones(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    fecha = models.DateTimeField(db_column='FECHA')  # Field name made lowercase.
    duracion = models.FloatField(db_column='DURACION')  # Field name made lowercase.
    medico = models.ForeignKey('Medicos', models.DO_NOTHING, db_column='MEDICO')  # Field name made lowercase.
    paciente = models.ForeignKey('Pacientes', models.DO_NOTHING, db_column='PACIENTE')  # Field name made lowercase.
    empleado_dni = models.ForeignKey(Empleados, models.DO_NOTHING, db_column='EMPLEADO_DNI')  # Field name made lowercase.
    quirofanos = models.ForeignKey('Quirofanos', models.DO_NOTHING, db_column='quirofanos_ID')  # Field name made lowercase.
    servicio = models.ForeignKey('Servicio', models.DO_NOTHING, db_column='servicio_ID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'intervenciones'


class Medicamentos(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='NOMBRE', max_length=45)  # Field name made lowercase.
    descripcion = models.CharField(db_column='DESCRIPCION', max_length=45)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'medicamentos'


class Medicos(models.Model):
    dni = models.IntegerField(db_column='DNI', primary_key=True)  # Field name made lowercase.
    nombres = models.CharField(db_column='NOMBRES', max_length=45)  # Field name made lowercase.
    apellidos = models.CharField(db_column='APELLIDOS', max_length=45)  # Field name made lowercase.
    direccion = models.CharField(db_column='DIRECCION', max_length=45)  # Field name made lowercase.
    celular = models.CharField(db_column='CELULAR', max_length=45)  # Field name made lowercase.
    especialidad = models.ForeignKey(Especialidades, models.DO_NOTHING, db_column='ESPECIALIDAD')  # Field name made lowercase.
    turno = models.ForeignKey('Turnos', models.DO_NOTHING, db_column='TURNO')  # Field name made lowercase.
    fecha_registro = models.DateTimeField(db_column='FECHA_REGISTRO')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'medicos'


class Pacientes(models.Model):
    dni = models.IntegerField(db_column='DNI', primary_key=True)  # Field name made lowercase.
    nombres = models.CharField(db_column='NOMBRES', max_length=45)  # Field name made lowercase.
    apellidos = models.CharField(db_column='APELLIDOS', max_length=45)  # Field name made lowercase.
    direccion = models.CharField(db_column='DIRECCION', max_length=45)  # Field name made lowercase.
    celular = models.CharField(db_column='CELULAR', max_length=9)  # Field name made lowercase.
    fecha_nac = models.DateField(db_column='FECHA_NAC')  # Field name made lowercase.
    edad = models.IntegerField(db_column='EDAD', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'pacientes'


class Pagos(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    monto = models.FloatField(db_column='MONTO')  # Field name made lowercase.
    fecha = models.DateTimeField(db_column='FECHA')  # Field name made lowercase.
    servicio = models.ForeignKey('Servicio', models.DO_NOTHING, db_column='SERVICIO_ID')  # Field name made lowercase.
    paciente = models.ForeignKey(Pacientes, models.DO_NOTHING, db_column='PACIENTE')  # Field name made lowercase.
    cajero = models.ForeignKey(Empleados, models.DO_NOTHING, db_column='CAJERO')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'pagos'


class Pisos(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    numero = models.IntegerField(db_column='NUMERO')  # Field name made lowercase.
    numero_hab = models.IntegerField(db_column='NUMERO_HAB')  # Field name made lowercase.
    fecha_inau = models.DateTimeField(db_column='FECHA_INAU')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'pisos'


class Quirofanos(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    letra = models.CharField(db_column='LETRA', max_length=1)  # Field name made lowercase.
    descripcion = models.CharField(db_column='DESCRIPCION', max_length=45)  # Field name made lowercase.
    pisos = models.ForeignKey(Pisos, models.DO_NOTHING, db_column='pisos_ID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'quirofanos'


class Recetas(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    field_descripcion = models.CharField(db_column=' DESCRIPCION', max_length=45)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it started with '_'.
    f_registro = models.DateTimeField(db_column='F_REGISTRO')  # Field name made lowercase.
    medico = models.ForeignKey(Medicos, models.DO_NOTHING, db_column='MEDICO')  # Field name made lowercase.
    paciente = models.ForeignKey(Pacientes, models.DO_NOTHING, db_column='PACIENTE')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'recetas'


class RecetasMedicamentos(models.Model):
    recetas = models.OneToOneField(Recetas, models.DO_NOTHING, db_column='recetas_ID', primary_key=True)  # Field name made lowercase.
    medicamentos = models.ForeignKey(Medicamentos, models.DO_NOTHING, db_column='medicamentos_ID')  # Field name made lowercase.
    cantidad = models.IntegerField(db_column='CANTIDAD')  # Field name made lowercase.
    fecha_inicio = models.DateField(db_column='FECHA_INICIO')  # Field name made lowercase.
    fecha_fin = models.DateField(db_column='FECHA_FIN')  # Field name made lowercase.
    intervalos = models.IntegerField(db_column='INTERVALOS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'recetas_medicamentos'
        unique_together = (('recetas', 'medicamentos'),)


class Servicio(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='NOMBRE', max_length=45)  # Field name made lowercase.
    precio = models.FloatField(db_column='PRECIO')  # Field name made lowercase.
    descripcion = models.CharField(db_column='DESCRIPCION', max_length=45)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'servicio'


class Turnos(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    dia_turno = models.CharField(db_column='DIA_TURNO', max_length=15)  # Field name made lowercase.
    hora_inicio = models.TimeField(db_column='HORA_INICIO')  # Field name made lowercase.
    hora_fin = models.TimeField(db_column='HORA_FIN')  # Field name made lowercase.
    cupos = models.IntegerField(db_column='CUPOS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'turnos'
