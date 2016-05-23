package com.kugou.dao;

import java.util.List;

import com.kugou.pojo.Song;



public interface SongDao {
	
	public List<Song> selectAllSongs();
}
