#coding:utf-8
import pandas as pd
import numpy as np
import sklearn
import sys
import jieba.analyse

def get_key_words(string_data, how=''):
    # topK：提取的关键字数量，不指定则提取全部；
    # withWeight：设置为True指定输出词对应的IF-IDF权重
    if how == 'textrank':
        # 使用TextRank 算法
        tags_pairs = jieba.analyse.textrank(string_data,  topK=5,  withWeight=True)  # 提取关键字标签
    else:
        # 使用TF-IDF 算法
        tags_pairs = jieba.analyse.extract_tags(string_data,  topK=5,  withWeight=True)  # 提取关键字标签
    tags_list = []  # 空列表用来存储拆分后的三个值
    for i in tags_pairs:  # 打印标签、分组和TF-IDF权重
        tags_list.append((i[0], i[1]))  # 拆分三个字段值
    tags_pd = pd.DataFrame(tags_list, columns=['word', 'weight'])  # 创建数据框
    return tags_pd

def get_key_words1(string_data, how=''):
    # topK：提取的关键字数量，不指定则提取全部；
    # withWeight：设置为True指定输出词对应的IF-IDF权重
    if how == 'textrank':
        # 使用TextRank 算法
        tags_pairs = jieba.analyse.textrank(string_data,  topK=1,  withWeight=True)  # 提取关键字标签
    else:
        # 使用TF-IDF 算法
        tags_pairs = jieba.analyse.extract_tags(string_data,  topK=1,  withWeight=True)  # 提取关键字标签
    # tags_list = []  # 空列表用来存储拆分后的三个值
    # for i in tags_pairs:  # 打印标签、分组和TF-IDF权重
    #     tags_list.append((i[0], i[1]))  # 拆分三个字段值
    # tags_pd1 = pd.DataFrame(tags_list, columns=['word', 'weight'])  # 创建数据框
    return tags_pairs

if __name__ == "__main__":
    # string_data = "我觉得自己生病了，我偶尔咳嗽，经常打喷嚏，并且持续性低烧，我以前就用过发烧史"
    # string_data=sys.args[1]
    # print(11111111)
    a = []
    for i in range(1, len(sys.argv)):
        a.append(sys.argv[i])
    string_data = a[0]
    print(get_key_words(string_data))
    print(get_key_words1(string_data)[0][0])
#
# keywords_tr = get_key_words(string_data, how='textrank')
# print("#####################textrank####################")
# print(keywords_tr)
