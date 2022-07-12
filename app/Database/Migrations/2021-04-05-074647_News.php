<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class News extends Migration
{
	public function up()
	{
		//membuat field untuk tabel
		$this->forge->addField([
			'id'	=> [
				'type' => 'INT',
				'constraint' => 5,
				'unsigned' => true,
				'auto_increment' => true
			],
			'title'	=> [
				'type' 			=> 'VARCHAR',
				'constraint'	=> 255
			],
			'author'	=> [
				'type' 			=> 'VARCHAR',
				'constraint'	=> 100,
				'default' 		=> 'John Doe'
			],
			'content' => [
				'type' 			=> 'TEXT',
				'null'			=> true
			],
			'status' => [
				'type' 			=> 'ENUM',
				'constraint' 	=> ['published', 'draft'],
				'default' 		=> 'draft'
			]
		]);
		//membuat pk
		$this->forge->addKey('id', true);

		//membuat tabel news
		$this->forge->createTable('news', true);
	}

	public function down()
	{
		//menghapus tabel
		$this->forge->dropTable('news');
	}
}
