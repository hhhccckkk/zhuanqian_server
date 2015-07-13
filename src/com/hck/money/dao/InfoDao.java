package com.hck.money.dao;
import java.util.List;
import com.hck.money.bean.Info;
public interface  InfoDao {
	Info getInfo(int id);
	List<Info> getInfos();
	void deleteinfo(int id);
	void updateInfo(Info info);
    void addVison(Info info);
	
}
