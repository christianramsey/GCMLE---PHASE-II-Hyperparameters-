#!/usr/bin/env bash

gcloud ml-engine jobs submit training $JOBNAME \
  --region=$REGION \
  --module-name=trainer.task \
  --package-path=$(pwd)/flights/trainer \
  --job-dir=$OUTPUT_DIR \
  --staging-bucket=gs://$BUCKET \
  --config=hyperparam.yaml \
 —\
   --output_dir=$OUTPUT_DIR \
   --traindata $DATA_DIR/train$PATTERN \
   --evaldata $DATA_DIR/test$PATTERN \
   --num_training_epochs=5