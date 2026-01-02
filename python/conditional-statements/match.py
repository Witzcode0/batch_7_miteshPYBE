data = {"type": "circle", "radius": 5}
match data:
    case {"type": "circle", "radius": r}:
        print(f"Circle with radius {r}")
    case {"type": "square", "side": s}:
        print(f"Square with side {s}")
    case _:
        print("Unknown shape")
