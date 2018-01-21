#!/bin/bash

start=`date +%s`

#--experiment_name=base_101_v4_rerun \
# train and test
CUDA_VISIBLE_DEVICES=0 python holly_capsule.py \
--experiment_name=base_101_v4_less_aug \
--debug_mode=False \
--dataset=cifar10 \
--cap_model=v0 \
--max_epoch=300 \
--loss_form=margin \
--optim=adam \
--schedule 150 200 250 \
--lr=0.0001


end=`date +%s`
runtime=$((end-start))

echo "Completed in" $runtime "seconds"