/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date - 2017年12月02日 12时57分57秒
 */
package com.neusoft.service.impl;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.neusoft.base.*;
import com.neusoft.po.*;
import com.neusoft.service.ItemService;
import com.neusoft.utils.Pager;
import com.neusoft.utils.SystemContext;

import java.util.*;

import com.neusoft.po.*;
import com.neusoft.mapper.*;
import com.neusoft.service.*;

/**
 * @ClassName:  
 * @Description: 
 * @author  - - admin
 * @date - 2017年12月02日 12时57分57秒
 */

@Service
public class ItemServiceImpl extends BaseServiceImpl<Item> implements ItemService{
	 
	
	@Autowired
	private ItemMapper itemMapper;
	@Override
	public BaseDao<Item> getBaseDao() {
		return itemMapper;
	}
	
	
	public Pager<Item> solrFind(Item item, String condition) {
		
		Pager<Item> pagers = null;
		
		
		return pagers;
	}


	public List<Item> listtj(List<Integer> types) {
		// TODO Auto-generated method stub
		return itemMapper.listtj(types);
	}

}
