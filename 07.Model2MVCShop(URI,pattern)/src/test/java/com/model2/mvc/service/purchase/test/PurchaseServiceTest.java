package com.model2.mvc.service.purchase.test;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Product;
import com.model2.mvc.service.domain.Purchase;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.purchase.PurchaseService;

import junit.framework.Assert;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:config/context-common.xml",
									"classpath:config/context-aspect.xml",
									"classpath:config/context-mybatis.xml",
									"classpath:config/context-transaction.xml"})
public class PurchaseServiceTest {

	@Autowired
	@Qualifier("purchaseServiceImpl")
	private PurchaseService purchaseService;
	
	//@Test
	public void TestGetPurchase() throws Exception{
		int tranNo=10003;
		Purchase purchase = purchaseService.getPurchase(tranNo);
		
		Assert.assertEquals("����", purchase.getDivyAddr());
	}
	
	//@Test
	public void TestAddPurchase() throws Exception{
		Purchase purchase = new Purchase();
		User user=new User();
		Product product=new Product();
		
		user.setUserId("user99");
		System.out.println(user.getUserId());
		product.setProdNo(10100);
		System.out.println(product.getProdNo());
		
		purchase.setBuyer(user);
		purchase.setDivyAddr("�������ý���");
		purchase.setDivyDate("19/05/02");
		purchase.setPaymentOption("2");
		purchase.setPurchaseProd(product);
		purchase.setTranCode("2");
		
		purchaseService.addPurchase(purchase);
		
		//Assert.assertEquals("�������ý���", purchaseService.getPurchase(tranNo));
	}
	
	@Test
	public void TestGetPurchaseList() throws Exception{
		Search search=new Search();
		search.setCurrentPage(1);
		search.setPageSize(3);
		String buyerId="user02";
		
		Map<String,Object> map = purchaseService.getPurchaseList(search, buyerId);
		
		List<Purchase> list=(List<Purchase>)map.get("list");
		int totalCount=(Integer)map.get("totalCount");
		System.out.println("totalCount :: "+totalCount);
		
		Assert.assertEquals(3, list.size());
		
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i));
		}
	}
	
	//@Test
	public void TestUpdatePurcahse() throws Exception {
		Purchase purchase = new Purchase();
		
		purchase.setTranNo(10022);
		purchase.setPaymentOption("1");
		
		purchaseService.updatePurcahse(purchase);
		
		Assert.assertEquals("1", (purchaseService.getPurchase(10022)).getPaymentOption());
	}
	
	//@Test
	public void TestUpdateTranCode() throws Exception{
		Purchase purchase=new Purchase();
		purchase.setTranNo(10022);
		purchase.setTranCode("3");
		
		purchaseService.updateTranCode(purchase);
		
		Assert.assertEquals("3", (purchaseService.getPurchase(10022)).getTranCode());
	}

	
}
