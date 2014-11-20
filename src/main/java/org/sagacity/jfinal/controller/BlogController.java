package org.sagacity.jfinal.controller;

import org.sagacity.jfinal.interceptor.BlogInterceptor;
import org.sagacity.jfinal.model.Blog;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

/**
 * BlogController 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller
 * 中，养成好习惯，有利于大型项目的开发与维护
 */
@Before(BlogInterceptor.class)
public class BlogController extends Controller {

	public void index() {
		setAttr("page", Blog.instance.paginate(1, 5, "SELECT *", "FROM Blog ORDER BY id DESC"));
		render("blog.jsp");
	}

	public void add() {
		
	}

	public void save() {
		getModel(Blog.class).save();
		redirect("/blog");
	}

	public void edit() {
		setAttr("blog", Blog.instance.findById(getParaToInt()));
	}

	public void update() {
		getModel(Blog.class).update();
		redirect("/blog");
	}

	public void delete() {
		Blog.instance.deleteById(getParaToInt());
		redirect("/blog");
	}
}
