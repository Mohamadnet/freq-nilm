#!bin/bash


appliance='dr'
fold=4

for dataset in 1 2
do
	for cell_type in 'GRU' 'LSTM' 'RNN'
	do
		for hidden_size in 20 50 100
		do
			for num_layers in 1 2 3 4
			do
				for bidirectional in 'True' 'False'
				do
					for lr in 0.01 0.1 1
					do
						for iterations in 1000 2000 3000
						do
							CUDA_VISIBLE_DEVICES=2 python rnn-nested-cv.py $fold $dataset $cell_type $hidden_size $num_layers $bidirectional $lr $iterations 0 $appliance
						done
					done
				done
			done
		done
	done
done
# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_cv_Yiling.py 2 LSTM 100 1 False 1 5000 0 dw fridge dr mw hvac
# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_cv_Yiling.py 2 LSTM 100 1 False 1 5000 0 dw fridge mw hvac dr
# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_cv_Yiling.py 2 LSTM 100 1 False 1 5000 0 dw fridge mw dr hvac
# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_cv_Yiling.py 2 LSTM 100 1 False 1 5000 0 dw dr hvac fridge mw
# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_cv_Yiling.py 2 LSTM 100 1 False 1 5000 0 dw dr hvac mw fridge



# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_reduced_p.py 2 GRU 20 3 False 1 2000 0 hvac
# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_reduced_p.py 2 GRU 50 3 False 1 2000 0 hvac
# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_reduced_p.py 2 GRU 100 3 False 1 2000 0 hvac
# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_reduced_p.py 2 LSTM 20 3 False 1 2000 0 hvac
# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_reduced_p.py 2 LSTM 50 3 False 1 2000 0 hvac
# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_reduced_p.py 2 LSTM 100 3 False 1 2000 0 hvac
# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_reduced_p.py 2 RNN 20 3 False 1 2000 0 hvac
# CUDA_VISIBLE_DEVICES=2 python rnn_pytorch_tree_teacher_reduced_p.py 2 RNN 50 3 False 1 2000 0 hvac