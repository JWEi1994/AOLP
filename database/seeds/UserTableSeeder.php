<?php

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Role;
use App\Models\Instructor;

class UserTableSeeder extends Seeder
{
  public function run()
  {
    $role_student = Role::where('name', 'student')->first();
    $role_instructor  = Role::where('name', 'instructor')->first();
    $role_admin  = Role::where('name', 'admin')->first();

    $is_exist = User::all();

    if (!$is_exist->count()) {
      $student = new User();
      $student->first_name = 'NG';
      $student->last_name = 'WK';
      $student->email = 'student@aolp.com';
      $student->password = bcrypt('secret');
      $student->is_active = 1;
      $student->save();
      $student->roles()->attach($role_student);

      $admin = new User();
      $admin->first_name = 'Admin';
      $admin->last_name = 'A';
      $admin->email = 'admin@aolp.com';
      $admin->password = bcrypt('secret');
      $admin->is_active = 1;
      $admin->save();
      $admin->roles()->attach($role_admin);


      //import instructors
      $instructor_user = new User();
      $instructor_user->first_name = 'Angela';
      $instructor_user->last_name = 'Yu';
      $instructor_user->email = 'instructor@aolp.com';
      $instructor_user->password = bcrypt('secret');
      $instructor_user->is_active = 1;
      $instructor_user->save();
      $instructor_user->roles()->attach($role_student);

      $instructor = new Instructor();
      $instructor->user_id = $instructor_user->id;
      $instructor->first_name = 'Angela';
      $instructor->last_name = 'Yu';
      $instructor->instructor_slug = 'angela-yu';
      $instructor->contact_email = 'instructor@aolp.com';
      $instructor->telephone = '+61 (800) 123-54323';
      $instructor->mobile = '+61 800-1233-8766';
      $instructor->paypal_id = 'instructor@aolp.com';
      $instructor->biography = '<p>I am Angela Yu</p>';
      $instructor->instructor_image = 'instructor/1/angela.jpg';
      $instructor->save();
      $instructor_user->roles()->attach($role_instructor);
    }
  }
}
