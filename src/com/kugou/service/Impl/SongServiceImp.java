package com.kugou.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kugou.dao.SongDao;
import com.kugou.pojo.Song;
import com.kugou.service.SongService;

@Service("songService")
public class SongServiceImp implements SongService
{
	@Resource
	private SongDao songDao;

	@Override
	public List<Song> selectAllSongs() {
		// TODO Auto-generated method stub
		return songDao.selectAllSongs();
	}
}
