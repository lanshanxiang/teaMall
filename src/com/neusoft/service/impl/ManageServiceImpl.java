/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date - 2017年12月02日 12时57分57秒
 */
package com.neusoft.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.neusoft.base.*;
import com.neusoft.po.*;
import com.neusoft.service.ManageService;
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
public class ManageServiceImpl extends BaseServiceImpl<Manage> implements ManageService{
	 
	
	@Autowired
	private ManageMapper manageMapper;
	@Override
	public BaseDao<Manage> getBaseDao() {
		return manageMapper;
	}

}
