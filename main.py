import torch

# 检查CUDA是否可用
if torch.cuda.is_available():
    print("CUDA is available! Training on GPU.")
    print("GPU Device Name: ", torch.cuda.get_device_name(0))
    print("GPU Device Count: ", torch.cuda.device_count())
else:
    print("CUDA is not available. Training on CPU.")
