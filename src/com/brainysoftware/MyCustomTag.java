package com.brainysoftware;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class MyCustomTag extends TagSupport {
	public int doEndTag() throws JspException  {
		JspWriter out = pageContext.getOut();
		try {
		out.println("Hello from the custom tag.");
		}
		catch (Exception e) {
		}
		return super.doEndTag();
		}
}
