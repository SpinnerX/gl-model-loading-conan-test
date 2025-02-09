#pragma once
#include <cstdint>

typedef enum class MouseCode : uint16_t{
    // From glfw3.h
    Button0                = 0,
    Button1                = 1,
    Button2                = 2,
    Button3                = 3,
    Button4                = 4,
    Button5                = 5,
    Button6                = 6,
    Button7                = 7,

    ButtonLast             = Button7,
    ButtonLeft             = Button0,
    ButtonRight            = Button1,
    ButtonMiddle           = Button2
} Mouse;

#define MOUSE_BUTTON_0      Mouse::Button0
#define MOUSE_BUTTON_1      Mouse::Button1
#define MOUSE_BUTTON_2      Mouse::Button2
#define MOUSE_BUTTON_3      Mouse::Button3
#define MOUSE_BUTTON_4      Mouse::Button4
#define MOUSE_BUTTON_5      Mouse::Button5
#define MOUSE_BUTTON_6      Mouse::Button6
#define MOUSE_BUTTON_7      Mouse::Button7
#define MOUSE_BUTTON_LAST   Mouse::ButtonLast
#define MOUSE_BUTTON_LEFT   Mouse::ButtonLeft
#define MOUSE_BUTTON_RIGHT  Mouse::ButtonRight
#define MOUSE_BUTTON_MIDDLE Mouse::ButtonMiddle