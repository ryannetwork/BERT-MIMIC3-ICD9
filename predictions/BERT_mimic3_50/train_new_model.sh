CUDA_VISIBLE_DEVICES=2 python -m pdb training.py \
    ./mimicdata/mimic3/train_50.csv \
    ./mimicdata/mimic3/vocab.csv \
    50 \
    bert \
    50 \
    --filter-size 10 \
    --num-filter-maps 50 \
    --dropout 0.2 \
    --patience \
    10 \
    --criterion prec_at_8 \
    --lr 1e-4 \
    --embed-file ./mimicdata/mimic3/processed_full.embed \
    --gpu \
    --redefined_tokenizer \
    --from_scratch \
    # --pos \
    # conv_attn \
