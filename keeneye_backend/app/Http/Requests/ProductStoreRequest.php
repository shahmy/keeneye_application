<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     */
    public function rules(): array
    {
        return [
            'name' => ['required', 'max:255', 'string'],
            'description' => ['nullable', 'string'],
            'price' => ['required', 'numeric'],
            'quantity' => ['required', 'numeric'],
            'is_featured' => ['required', 'max:255'],
            'is_avilable' => ['required', 'max:255'],
            'status' => ['required', 'max:255'],
            'categories' => ['array'],
            'is_image_featured' => ['array'],
            'images' => ['array'],
        ];
    }
}
