<?php

namespace App\Models;

use App\Models\Scopes\Searchable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Image extends Model
{
    use HasFactory;
    use Searchable;
    use SoftDeletes;

    protected $fillable = [
        'image',
        'is_featured',
        'imageable_id',
        'imageable_type',
    ];

    protected $searchableFields = ['*'];

    public function imageable()
    {
        return $this->morphTo();
    }
}
