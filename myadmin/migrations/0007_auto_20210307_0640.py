# Generated by Django 3.1.7 on 2021-03-07 01:10

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('myadmin', '0006_auto_20210306_2250'),
    ]

    operations = [
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('designation', models.CharField(max_length=100)),
                ('experience', models.CharField(max_length=10)),
                ('about', models.TextField(null=True)),
                ('address', models.TextField(null=True)),
                ('contact', models.CharField(max_length=15, null=True)),
                ('profile_photo', models.ImageField(null=True, upload_to='profiles')),
                ('city', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='myadmin.city')),
                ('role', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='myadmin.role')),
                ('state', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='myadmin.state')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, related_name='innovatorprofile', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'profile',
            },
        ),
        migrations.DeleteModel(
            name='Innovator',
        ),
    ]
