<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Gallery extends Migration
{
	public function up()
	{
		//membuat field untuk tabel
		$this->forge->addField([
			'id_gallery'	=> [
				'type' => 'INT',
				'constraint' => 5,
				'unsigned' => true,
				'auto_increment' => true
			],
			'title'	=> [
				'type' 			=> 'VARCHAR',
				'constraint'	=> 255
			],
			'caption'	=> [
				'type' 			=> 'VARCHAR',
				'constraint'	=> 100,
				'default' 		=> 'John Doe'
			],
			'gambar' => [
				'type' 			=> 'VARCHAR',
				'constraint'	=> 100
			]
		]);

		//membuat pk
		$this->forge->addKey('id_gallery', true);

		//membuat tabel gallery
		$this->forge->createTable('gallery', true);
	}

	public function down()
	{

		//menghapus tabel
		$this->forge->dropTable('gallery');
	}
}
