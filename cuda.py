import torch
# pip3 install torch==2.1.0 torchvision==0.16.0  --index-url https://download.pytorch.org/whl/cu121
print(f"cuda available: {torch.cuda.is_available()}")
print(f"cuda version: {torch.version.cuda}")
