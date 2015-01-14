package com.uikoo9.manage.${pname}.controller;

import com.uikoo9.manage.${pname}.model.${cname}Model;
import com.uikoo9.util.crud.QJsonUtil;
import com.uikoo9.util.jfinal.QController;
import com.uikoo9.util.jfinal.QControllerUrl;

/**
 * ${cname}Controller
 * @author qiaowenbin
 */
@QControllerUrl("${url}")
public class ${cname}Controller extends QController{
	
	/**
	 * 跳转到首页 
	 */
	public void index(){
		setAttr("qpage", list(${cname}Model.class));
		render("/WEB-INF/view/manage/${pname}/${ftl}-index.ftl");
	}
	
	/**
	 * 跳转到保存修改页 
	 */
	public void savep(){
		setAttr("row", getRow(${cname}Model.class));
		render("/WEB-INF/view/manage/${pname}/${ftl}-input.ftl");
	}
	
	/**
	 * 保存或修改
	 */
	public void save(){
		String validate = validate();
		if(validate == null){
			renderJson(save(${cname}Model.class));
		}else{
			renderJson(QJsonUtil.error(validate));
		}
	}
	
	/**
	 * 删除一条或多条
	 */
	public void del(){
		renderJson(del(${cname}Model.class));
	}
	
}