
# Training
python run.py \
	--do_train \
	--do_test \
	--model_name_or_path distilroberta-base \
	--train_filename /kaggle/input/c-dataset/train.csv \
	--dev_filename /kaggle/input/c-dataset/test.csv \
	--output_dir saved_models/$lang \
	--max_source_length 512 \
	--max_target_length 64 \
	--beam_size 10 \
	--train_batch_size 32 \
	--eval_batch_size 32 \
	--learning_rate 5e-5 \
	--gradient_accumulation_steps 2 \
	--num_train_epochs 10 \
    --train_steps 18750