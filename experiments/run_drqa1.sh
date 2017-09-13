#!/usr/bin/env bash
python3 utils/train_model.py -t squad \
                         -m deeppavlov.agents.squad.squad:SquadAgent \
                         --batchsize 128 \
                         --display-examples False \
                         --max-train-time -1 \
                         --num-epochs -1 \
                         --log-every-n-secs 60 \
                         --log-every-n-epochs -1 \
                         --validation-every-n-secs 1800 \
                         --validation-every-n-epochs -1 \
                         --chosen-metric f1 \
                         --validation-patience 5 \
                         --lr-drop-patience 1 \
                         --lr 0.001 \
                         --lr_drop 0.3 \
                         --type 'drqa_clone' \
                         --concat True \
                         --embedding_dropout 0.3 \
                         --linear_dropout 0.0 \
                         --rnn_dropout 0.0 \
                         --recurrent_dropout 0.0 \
                         --input_dropout 0.3 \
                         --output_dropout 0.3 \
                         --model-file '../save/squad/squad_drqa/squad' \
                         --pretrained_model '../save/squad/squad_6sept2017/fastqa_drqa' \
                         --embedding_file '../embeddings/wiki-news-300d-1M.vec'