src=en
tgt=zh

# ssemb=/home/ma-user/work/ding/code/MUSE-master/result/en-zh0830/en-zh/seed2/vectors-en.txt
# stemb=/home/ma-user/work/ding/code/MUSE-master/result/en-zh0830/en-zh/seed2/vectors-zh.txt

# csemb=/home/ma-user/work/ding/data/wiki_xlm/wiki_xlm.en.vec
# ctemb=/home/ma-user/work/ding/data/wiki_xlm/wiki_xlm.zh.vec

model_path=/home/ma-user/work/ding/code/CSCBLI-main/wiki-medicine-vecmap_xlm_mlm_tlm_parrelCS_finetun/en-zh-add_orign_nw.pkl_best
echo $src $tgt
CUDA_VISIBLE_DEVICES=0 python test.py  --model_path $model_path \
        --dict_path /home/ma-user/work/ding/data/medicine_all/dict_1000.en  --mode v2 \
        --src_lang $src --tgt_lang $tgt --lambda_w1 0.53 \
        --reload_src_ctx   /home/ma-user/work/ding/data/medicine_all/wiki_medicine_vecmap/xlm_mlm_tlm_CS_wiki_finetune/wiki_xlm.en_17w.vec \
        --reload_tgt_ctx   /home/ma-user/work/ding/data/medicine_all/wiki_medicine_vecmap/xlm_mlm_tlm_CS_wiki_finetune/wiki_xlm.zh_17w.vec
