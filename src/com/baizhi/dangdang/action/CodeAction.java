package com.baizhi.dangdang.action;

import java.awt.image.BufferedImage;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;

import org.apache.struts2.ServletActionContext;

import com.baizhi.dangdang.util.ValidateImageCodeUtils;
import com.opensymphony.xwork2.ActionSupport;
/**
 * @category ��֤��
 * */
public class CodeAction extends ActionSupport {
@Override
public String execute() throws Exception {
	//��ȡ��֤��
	String code = ValidateImageCodeUtils.getSecurityCode();
	//����ȡ����֤�뱣����session��������֤
	ServletActionContext.getRequest().getSession().setAttribute("code", code);
	//��ȡ��֤�����ɵ�ͼƬ
	BufferedImage image = ValidateImageCodeUtils.createImage(code);
	//����ȡ����֤���ӡ��ҳ����
	ServletOutputStream os = ServletActionContext.getResponse().getOutputStream();
	ImageIO.write(image, "png", os);
	os.close();
	return null;
}
}
