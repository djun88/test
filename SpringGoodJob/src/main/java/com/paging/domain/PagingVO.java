package com.paging.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import lombok.Data;

/*���� ����ϴ� ����¡ ó�� �� 
 * �˻� ����� ���ȭ�Ͽ� ������ �� �ֵ��� ����.
 * */
@Data
public class PagingVO {
   
   //����¡ ó�� ���� ������Ƽ
   private int cpage;//���� ������ ������ ��ȣ
   private int pageSize;//�� ������ �� ������ ��� ����
   private int totalCount;//�� �Խñ� ��
   private int pageCount;//������ ��
   
   //DB���� ���ڵ带 ������� ���� ������Ƽ
   private int start;
   private int end;
   
   //����¡ �� ó���� ���� ������Ƽ
   private int pagingBlock=5;//�� �� �� ������ ������ ��
   private int prevBlock;//���� 5��
   private int nextBlock;//���� 5��
   
   //�˻� ���� ������Ƽ
   private String findType;//�˻� ����
   private String findKeyword;//�˻� Ű����
   
   /**����¡ ó���� ���� ������ �����ϴ� �޼ҵ�*/
   public void init(HttpSession ses) {
      pageCount=(totalCount-1)/pageSize+1;
      
      if(cpage<1) {
         cpage=1;//1�������� ����Ʈ��
      }
      if(cpage>pageCount) {
         cpage=pageCount;//������ �������� ����
      }
      //[1] where rn between A and B�� �̿��� ���
      //end= cpage*pageSize;
      //start = end - (pageSize-1);
      
      //[2] where rn > A and rn <B�� �̿��� ���
      start = (cpage-1)*pageSize;
      end = start+(pageSize+1);
      
      //����¡ �� ����----
      /*
       * cpage
       * [1][2][3][4][5] |[6][7][8][9][10] |[11][12][13][14][15] |[16][17][18][19][20]
       * 
       *  cpage         pagingBlock         prevBlock(����5��)   nextBlock(���� 5��)
       *  1 ~ 5            5                  0         6
       *  6 ~10                              5         11
       *  11~15                              10         16
       * 
       * prevBlock = (cpage-1)/pagingBlock * pagingBlock
       * nextBlock = prevBlock + (pagingBlock+1)
       * */
      prevBlock = (cpage-1)/pagingBlock * pagingBlock;
      nextBlock = prevBlock + (pagingBlock+1);
      
   }//-----------------------------
   
   public String getPageNavi(String myctx, String loc, String userAgent) {
	  findType = (findType==null)?"":findType;
      if(findKeyword==null) {
    	  findKeyword="";
      }else {
    	  //�������� IE�� ��� �˻��� �ѱ� ó���ϱ�
    	  if(userAgent.indexOf("MSIE")>-1|| userAgent.indexOf("Trident")>-1) {
    		  
    		  try {
    			  findKeyword = URLEncoder.encode(findKeyword, "UTF-8");
    		  } catch (UnsupportedEncodingException e) {
    			  e.printStackTrace();
    		  }
    	  }
      }
      
      
      String qStr="?findType="+findType+"&findKeyword="+findKeyword+"&";
      String link=myctx+"/"+loc+qStr;
      StringBuilder buf=new StringBuilder();
      buf.append("<ul class='pagination justify-content-center'>");
      if(prevBlock>0) {
         buf.append("<li class='page-item'>");
         buf.append("<a class='page-link' href='"+link+"cpage="+prevBlock+"'>");
         buf.append("Prev");
         buf.append("</a>");
         buf.append("</li>");
      }
      for(int i=prevBlock+1;i<=nextBlock-1 && i<=pageCount;i++) {
         String css="";
         if(i==cpage) {
            css="active";
         }else {
            css="";
         }
         buf.append("<li class='page-item "+css+"'>");
         buf.append("<a class='page-link' href='"+link+"cpage="+i+"'>");
         buf.append(i);
         buf.append("</a>");
         buf.append("</li>");
      }//for---------
      if(nextBlock<=pageCount) {
         buf.append("<li class='page-item'>");
         buf.append("<a class='page-link' href='"+link+"cpage="+nextBlock+"'>");
         buf.append("Next");
         buf.append("</a>");
         buf.append("</li>");
      }
      buf.append("</ul>");
      return buf.toString();
   }
   
}/////////////////////////////////////////




