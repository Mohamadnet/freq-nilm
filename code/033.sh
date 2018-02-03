#!bin/bash

# CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_cv_Yiling.py 2 LSTM 100 1 True 0.1 5000 0 dr mw dw fridge hvac
# CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_cv_Yiling.py 2 LSTM 100 1 True 0.1 5000 0 dw hvac fridge dr mw
# CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_cv_Yiling.py 2 LSTM 100 1 True 0.1 5000 0 dw hvac fridge mw dr
# CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_cv_Yiling.py 2 LSTM 100 1 True 0.1 5000 0 dw hvac dr fridge mw
# CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_cv_Yiling.py 2 LSTM 100 1 True 0.1 5000 0 dw hvac dr mw fridge



CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_reduced_p.py 2 GRU 20 4 True 0.1 2000 0 hvac
CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_reduced_p.py 2 GRU 50 4 True 0.1 2000 0 hvac
CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_reduced_p.py 2 GRU 100 4 True 0.1 2000 0 hvac
CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_reduced_p.py 2 LSTM 20 4 True 0.1 2000 0 hvac
CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_reduced_p.py 2 LSTM 50 4 True 0.1 2000 0 hvac
CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_reduced_p.py 2 LSTM 100 4 True 0.1 2000 0 hvac
CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_reduced_p.py 2 RNN 20 4 True 0.1 2000 0 hvac
CUDA_VISIBLE_DEVICES=3 python rnn_pytorch_tree_teacher_reduced_p.py 2 RNN 50 4 True 0.1 2000 0 hvac