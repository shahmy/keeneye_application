<?php

namespace Database\Factories;

use App\Models\Image;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

class ImageFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Image::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'is_featured' => $this->faker->numberBetween(0, 127),
            'imageable_type' => $this->faker->randomElement([
                \App\Models\Product::class,
                \App\Models\Category::class,
            ]),
            'imageable_id' => function (array $item) {
                return app($item['imageable_type'])->factory();
            },
        ];
    }
}
