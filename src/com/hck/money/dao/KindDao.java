package com.hck.money.dao;

import java.util.List;

import com.hck.money.bean.Kind;

public interface KindDao {
	public List<Kind> getKinds();
	public boolean deleteKind(int id);
	public void upateKind(Kind kind);
	public boolean addKind(Kind kind);
	public Kind getOneKind(int id);

}
