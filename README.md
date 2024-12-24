## DFNO
Zhong Yuan, Peng Hu, Hongmei Chen, Yingke Chen, and **Qilin Li***, [DFNO: Detecting Fuzzy Neighborhood Outliers](Paper/2025-DFNO.pdf), IEEE Transactions on Knowledge and Data Engineering, 2024, vol. 37, no. 1, pp. 200-209. DOI: [10.1109/TKDE.2024.3484448](https://doi.org/10.1109/TKDE.2024.3484448).

## Abstract
<p style="text-align: justify; text-justify: inter-word;">
Outlier Detection (OD) has attracted extensive research due to its application in many fields. The idea of neighborhood computing is one of the widely used methods in outlier analysis. Nevertheless, these methods mainly use certainty strategies to model outlier detection, so they cannot effectively handle the fuzzy information in the dataset. Moreover, they mainly focus on dealing with outlier detection in numerical data and cannot effectively find outliers in mixed-attribute data. Fuzzy information granulation theory is an effective granular computing model that allows objects to belong to a set to a certain extent (i.e., membership degree), which makes it possible to better handle uncertainty problems such as fuzziness. In this work, we propose an outlier detection model based on fuzzy neighborhoods. First, a hybrid fuzzy similarity is constructed to granulate the set of objects to form fuzzy information granules. Second, the fuzzy $k$-nearest neighbor is defined to describe the fuzzy local information. Then, the fuzzy neighborhood density is defined to indicate the degree of aggregation of each object. The smaller the fuzzy neighborhood density of an object, the more likely it is to be an outlier. Based on this idea, the fuzzy neighborhood deviation degree is defined to quantify the degree of outliers of objects. Finally, the fuzzy deviation degree on the set of conditional attributes is constructed to indicate the outlier scores of objects. Experimental comparisons with state-of-the-art methods show that the proposed method has a significant improvement on the AUC index and applies to three types of data.
</p>

## Usage
You can run Demo_DFNO.m or DFNO.py:
```
clc;
clear
format shortG;

load Example.mat

Dataori=Example;

trandata=Dataori;
trandata(:,1:2)=normalize(trandata(:,1:2),'range');

k=3;
anomaly_scores=DFNO(trandata,k)

```
You can get outputs as follows:
```
anomaly_scores =
    1.3717
    1.2816
    1.4044
    1.3226
    1.3673
    1.1867
    1.5351
    1.4129
    1.1125
    1.5381
```

## Citation
If you find DFNO useful in your research, please consider citing:
```
@article{yuan2024detecting,
  title={DFNO: Detecting Fuzzy Neighborhood Outliers},
  author={Yuan, Zhong and Hu, Peng and Chen, Hong Mei and Chen, Ying Ke and Li, Qi Lin},
  journal={IEEE Transactions on Knowledge and Data Engineering},
  volume={},
  number={},
  pages={},
  year={2024},
  doi={10.1109/TKDE.2024.3484448},
  publisher={IEEE}
}
```
## Contact
If you have any questions, please contact yuanzhong@scu.edu.cn.
