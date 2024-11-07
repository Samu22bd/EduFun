<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\Writer;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $faker = Faker::create('id_ID');
        $writers = Writer::all();
        $category1 = 'Software Engineering';
        $category2 = 'Interactive Multimedia';
        $SEtitle = ['Human and Computer Interaction', 'User Experience', 'User Experience for Digital Immersive Technology'];
        $IMtitle = ['Pattern Software Design', 'Agile Software Development', 'Code Reengineering.'];
        $count = 0;

        for ($i=0; $i < 3; $i++) { 
            Post::create([
                'title' => $SEtitle[$i],
                'category' => $category1,
                'summary' => $faker->paragraph(),
                'material' => $faker->paragraphs(3, true), 
                'viewCount' => $count,
                'writer_id' => $writers->random()->id,
                'postDate' => $faker->dateTime()
            ]);
        }

        for ($i=0; $i < 3; $i++) { 
            Post::create([
                'title' => $IMtitle[$i],
                'category' => $category2,
                'summary' => $faker->paragraph(2),
                'material' => $faker->paragraphs(3, true), 
                'viewCount' => $count,
                'writer_id' => $writers->random()->id,
                'postDate' => $faker->dateTime()
            ]);
        }
    }
}
