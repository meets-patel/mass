# Generated by Django 3.1.7 on 2021-03-07 02:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('myadmin', '0008_auto_20210307_0804'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='role',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myadmin.role'),
        ),
    ]
