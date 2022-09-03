extends TextureRect

func _ready():
    yield(VisualServer, "frame_post_draw")
    var viewportWidth = get_viewport().size.x

    var viewportHeight = get_viewport().size.y

    var scale = viewportWidth / $".".texture.get_size().x

    $".".set_scale(Vector2(scale, scale))

