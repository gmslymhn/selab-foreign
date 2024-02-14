package tyut.selab.common.core.page;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @ClassName: PageDate
 * @Description: 分页
 * @Author: gmslymhn
 * @CreateTime: 2024-02-14 16:38
 * @Version: 1.0
 **/
@Data
public class PageData<T> implements Serializable {
    private static final long serialVersionUID = 1L;

    private int total;

    private List<T> list;

    /**
     * 分页
     * @param list   列表数据
     * @param total  总记录数
     */
    public PageData(List<T> list, long total) {
        this.list = list;
        this.total = (int)total;
    }
}

