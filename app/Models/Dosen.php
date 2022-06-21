<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Dosen extends Model
{
    Protected $table = 'dosen';

    Protected $fillable = [
        'nidn', 'nama', 'status', 'jafung', 'pakar', 'created_at', 'updated_at'
    ];
}
