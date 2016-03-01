package com.officeTool.myTask.service.impl;

import com.officeTool.myTask.dao.OraginDao;
import com.officeTool.myTask.pojo.Oragin;
import com.officeTool.myTask.service.OraginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wsq on 2016/3/2.
 */

@Service
public class OraginServiceImpl implements OraginService{

    @Resource
    private OraginDao dao;

    public void setDao(OraginDao dao) {
        this.dao = dao;
    }

    public List<Oragin> queryOragins() {
        return dao.queryOragins();
    }
}
