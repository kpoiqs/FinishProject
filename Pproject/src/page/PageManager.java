package page;

public class PageManager extends PageInfo {

	private int requestPage;

	public PageManager() {
		
		
	}
	
	
	public PageManager(int requestPage) {
		this.requestPage = requestPage;
	}
	
	public PageRowResult getPageRowResult() {
		PageRowResult pageRowResult = new PageRowResult();
		//PageRowResult�� ��ü���� �� ����
		pageRowResult.setRowStartNumber(Row_Count_Pre_Page * (requestPage -1) +1);
		pageRowResult.setRowEndNumber(Row_Count_Pre_Page * requestPage);
		
		return pageRowResult;
	}
	
	public PageGroupResult getPageGroupResult(String sql) {
		PageGroupResult pageGroupResult = new PageGroupResult();
		PageRowResult pageRowResult = new PageRowResult();
		//PageGroupResult�� ��ü���� �� ����
		
		//0���� �����Ҷ�
		//int requestPageGroupNumber = (requestPage -1)/Show_Page_Count;
		//pageGroupResult.setGroupStartNumber(requestPageGroupNumber * Show_Page_Count +1);
		//pageGroupResult.setGroupEndNumber((requestPageGroupNumber+1) * Show_Page_Count);
		
		//1���� �����Ҷ�
		int requestPageGroupNumber = (int)Math.ceil((double)requestPage/ Show_Page_Count);//�ø�
		pageGroupResult.setGroupStartNumber(requestPageGroupNumber * Show_Page_Count -(Show_Page_Count-1));
		pageGroupResult.setGroupEndNumber(requestPageGroupNumber * Show_Page_Count);
		//System.out.println(requestPageGroupNumber);
		
		//�� �� �� ��������
		PageDAO dao = new PageDAOImpl();
		int totalRow = dao.getCount(sql);
		
		//�� ��ũ ����
		int totalPageNumber = (int)Math.ceil((double)totalRow/Row_Count_Pre_Page);	
		//(totalRow-1)/Row_Count_Pre_Page+1; ����
		
		//last������ ��ũ�� �����ϱ�
		if(pageGroupResult.getGroupEndNumber() > totalPageNumber) {
			pageGroupResult.setGroupEndNumber(totalPageNumber);
		}
	
		//before, after ����
		if(pageGroupResult.getGroupStartNumber()==1) {
			pageGroupResult.setBeforPage(false);
		}
		if(pageGroupResult.getGroupEndNumber()==totalPageNumber) {
			pageGroupResult.setAfterPage(false);
		}
		
		pageGroupResult.setSelectPageNumger(requestPage);
		
		return pageGroupResult;
		
	}
	
/*	public static void main(String[] args) {
		PageManager p = new PageManager(0);
		//System.out.println(p.getPageRowResult().getRowStartNumber());
		//System.out.println(p.getPageRowResult().getRowEndNumber());
		
		System.out.println(p.getPageGroupResult().getGroupStartNumber());
		System.out.println(p.getPageGroupResult().getGroupEndNumber());
	}*/

}
