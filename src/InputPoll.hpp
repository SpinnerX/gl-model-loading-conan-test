#pragma once
#include <glm/glm.hpp>
#include "KeyCodes.hpp"
#include "MouseCodes.hpp"
#include <GLfW/glfw3.h>
/**
 * @name InputPoll.hpp
 * @note Actual input polling system to poll in differeny sets of key/mouse actions
 * @param UpdateEvents handles making sure that all of our events we handle have been successfully updated.
 * @param GetMousePos just returns the position of our mouse cursor
 */
class InputPoll{
public:
    InputPoll() = delete;
    InputPoll(const InputPoll&) = delete;
    void operator=(const InputPoll&) = delete;

    static void Initialize(GLFWwindow* Window);

    //! @note Key/Mouse event pressed!
    static bool IsKeyPressed(KeyCode keycode);

    static bool IsMousePressed(MouseCode mouseCode);

    //! @note Mouse Position
    static glm::vec2 GetMousePosition();

    static float GetMouseX();

    static float GetMouseY();

    //! @note Assuring that our events are correctly being updated
    static void UpdateEvents();
};