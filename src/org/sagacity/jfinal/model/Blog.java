package org.sagacity.jfinal.model;

import java.util.List;
import com.jfinal.plugin.activerecord.Model;

/**
 * Blog model.

将表结构放在此，消除记忆负担
mysql> desc blog;
+---------+--------------+------+-----+---------+----------------+
| Field   | Type         | Null | Key | Default | Extra          |
+---------+--------------+------+-----+---------+----------------+
| id      | int(11)      | NO   | PRI | NULL    | auto_increment |
| title   | varchar(200) | NO   |     | NULL    |                |
| content | mediumtext   | NO   |     | NULL    |                |
+---------+--------------+------+-----+---------+----------------+

数据库字段名建议使用驼峰命名规则，便于与 java 代码保持一致，如字段名： userId
 */
@SuppressWarnings("serial")
public class Blog extends Model<Blog> {
	public static final Blog instance = new Blog();
	
	/**
	 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
	 */
	public List<Blog> findAll() {
		return find("select * from blog order by id desc");
	}
}
