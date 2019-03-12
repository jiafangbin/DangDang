package com.baizhi.dangdang.action;

import java.awt.image.BufferedImage;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;

import org.apache.struts2.ServletActionContext;

import com.baizhi.dangdang.util.ValidateImageCodeUtils;
import com.opensymphony.xwork2.ActionSupport;
/**
 * @category 验证码
 * */
public class CodeAction extends ActionSupport {
@Override
public String execute() throws Exception {
	//获取验证码
	String code = ValidateImageCodeUtils.getSecurityCode();
	//将获取的验证码保存在session中用于验证
	ServletActionContext.getRequest().getSession().setAttribute("code", code);
	//获取验证码生成的图片
	BufferedImage image = ValidateImageCodeUtils.createImage(code);
	//将获取的验证码打印到页面上
	ServletOutputStream os = ServletActionContext.getResponse().getOutputStream();
	ImageIO.write(image, "png", os);
	os.close();
	return null;
}
}
