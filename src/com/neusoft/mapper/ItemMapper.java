package com.neusoft.mapper;
/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date - 2017年12月02日 12时57分57秒
 */
import com.neusoft.base.BaseDao;
import com.neusoft.po.*;
import com.neusoft.utils.Pager;
import java.util.*;

import org.apache.ibatis.annotations.Param;

import com.neusoft.po.*;
import com.neusoft.mapper.*;
import com.neusoft.service.*;

/**
 * @ClassName:  
 * @Description: 
 * @author  - - admin
 * @date - 2017年12月02日 12时57分57秒
 */


public interface ItemMapper extends BaseDao<Item>{

	List<Item> listtj(@Param("list")List<Integer> types);
	
}
