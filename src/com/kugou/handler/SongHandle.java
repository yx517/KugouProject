package com.kugou.handler;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kugou.pojo.Song;
import com.kugou.service.SongService;
import com.kugou.util.PackContents;

@Controller
@RequestMapping("/song")
public class SongHandle 
{
	@Resource
	private SongService songService;
	@RequestMapping("/selectAllsong")
	public String selectAllsongs(Map<String, Object> map)
	{
		List<Song> song=songService.selectAllSongs();
		map.put("song", song);
		return PackContents.SONG_PAGE;
	}
}
