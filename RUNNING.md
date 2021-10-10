# Running

## Setup

Run the following make recepie
```
make setup
```

## Training

Prepare config file accordingly.
> B_VALIDATE = `False`

Run:
```
make (cub/coco)
```

## Evalutaion


Prepare config file accordingly.
> B_VALIDATE = `True`

> `models/x/netG.pth` should be present.

Run:
```
make (cub/coco)
```