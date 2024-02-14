package tyut.selab.common.core.service.impl;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import tyut.selab.common.core.service.BaseService;

/**
 * @ClassName: BaseServicelmpl
 * @Description: 基础服务接口，所有Service接口都要继承
 * @Author: gmslymhn
 * @CreateTime: 2024-02-14 17:00
 * @Version: 1.0
 **/
public abstract class BaseServiceImpl<M extends BaseMapper<T>, T>  implements BaseService<T> {
}
