script_name("speed")
script_author("shved255")
script_version("1.0")

require "lib.moonloader"

local allowedVehicles = {
{ model = 400, accel = 0.00092, maxSpeed = 330.0},
{ model = 401, accel = 0.00076, maxSpeed = 290.0},
{ model = 402, accel = 0.00104, maxSpeed = 400.0},
{ model = 403, accel = 0.00072, maxSpeed = 240.0},
{ model = 404, accel = 0.00064, maxSpeed = 290.0}, 
{ model = 405, accel = 0.00088, maxSpeed = 330.0},
{ model = 406, accel = 0.00048, maxSpeed = 200.0},
{ model = 407, accel = 0.00064, maxSpeed = 220.0},
{ model = 408, accel = 0.00048, maxSpeed = 200.0},
{ model = 409, accel = 0.00064, maxSpeed = 300.0},
{ model = 410, accel = 0.00068, maxSpeed = 270.0},
{ model = 411, accel = 0.00136, maxSpeed = 480.0},
{ model = 412, accel = 0.00088, maxSpeed = 330.0},
{ model = 413, accel = 0.00064, maxSpeed = 280.0},
{ model = 414, accel = 0.00064, maxSpeed = 280.0},
{ model = 415, accel = 0.00128, maxSpeed = 460.0},
{ model = 416, accel = 0.00064, maxSpeed = 300.0},
{ model = 418, accel = 0.00064, maxSpeed = 300.0},
{ model = 419, accel = 0.00088, maxSpeed = 330.0},
{ model = 420, accel = 0.00076, maxSpeed = 320.0},
{ model = 421, accel = 0.00088, maxSpeed = 330.0},
{ model = 422, accel = 0.00076, maxSpeed = 310.0},
{ model = 423, accel = 0.00064, maxSpeed = 280.0},
{ model = 424, accel = 0.00096, maxSpeed = 380.0},
{ model = 426, accel = 0.00088, maxSpeed = 330.0},
{ model = 427, accel = 0.00064, maxSpeed = 320.0},
{ model = 428, accel = 0.00064, maxSpeed = 280.0},
{ model = 429, accel = 0.00112, maxSpeed = 400.0},
{ model = 431, accel = 0.00056, maxSpeed = 220.0},
{ model = 432, accel = 0.00048, maxSpeed = 240.0},
{ model = 433, accel = 0.00056, maxSpeed = 240.0},
{ model = 434, accel = 0.00112, maxSpeed = 400.0},
{ model = 436, accel = 0.00076, maxSpeed = 290.0},
{ model = 437, accel = 0.00056, maxSpeed = 220.0},
{ model = 438, accel = 0.00076, maxSpeed = 320.0},
{ model = 439, accel = 0.00096, maxSpeed = 380.0},
{ model = 440, accel = 0.00064, maxSpeed = 280.0},
{ model = 442, accel = 0.00064, maxSpeed = 270.0},
{ model = 443, accel = 0.00064, maxSpeed = 280.0},
{ model = 444, accel = 0.00064, maxSpeed = 280.0},
{ model = 445, accel = 0.00088, maxSpeed = 330.0},
{ model = 451, accel = 0.00128, maxSpeed = 480.0},
{ model = 455, accel = 0.00064, maxSpeed = 280.0},
{ model = 456, accel = 0.00064, maxSpeed = 280.0},
{ model = 457, accel = 0.00064, maxSpeed = 280.0},
{ model = 458, accel = 0.00076, maxSpeed = 300.0},
{ model = 459, accel = 0.00064, maxSpeed = 280.0},
{ model = 466, accel = 0.00076, maxSpeed = 300.0},
{ model = 467, accel = 0.00076, maxSpeed = 300.0},
{ model = 474, accel = 0.00076, maxSpeed = 300.0},
{ model = 475, accel = 0.00088, maxSpeed = 330.0},
{ model = 477, accel = 0.00112, maxSpeed = 400.0},
{ model = 478, accel = 0.00064, maxSpeed = 280.0},
{ model = 479, accel = 0.00076, maxSpeed = 300.0},
{ model = 480, accel = 0.00112, maxSpeed = 400.0},
{ model = 482, accel = 0.00064, maxSpeed = 280.0},
{ model = 483, accel = 0.00064, maxSpeed = 280.0},
{ model = 485, accel = 0.00064, maxSpeed = 200.0},
{ model = 486, accel = 0.00048, maxSpeed = 200.0},
{ model = 489, accel = 0.00076, maxSpeed = 310.0},
{ model = 490, accel = 0.00076, maxSpeed = 340.0},
{ model = 491, accel = 0.00088, maxSpeed = 330.0},
{ model = 492, accel = 0.00076, maxSpeed = 300.0},
{ model = 495, accel = 0.00096, maxSpeed = 380.0},
{ model = 496, accel = 0.00088, maxSpeed = 330.0},
{ model = 498, accel = 0.00064, maxSpeed = 280.0},
{ model = 499, accel = 0.00064, maxSpeed = 280.0},
{ model = 500, accel = 0.00076, maxSpeed = 310.0},
{ model = 502, accel = 0.00136, maxSpeed = 480.0},
{ model = 503, accel = 0.00136, maxSpeed = 480.0},
{ model = 504, accel = 0.00088, maxSpeed = 330.0},
{ model = 505, accel = 0.00076, maxSpeed = 310.0},
{ model = 506, accel = 0.00136, maxSpeed = 480.0},
{ model = 507, accel = 0.00088, maxSpeed = 330.0},
{ model = 508, accel = 0.00064, maxSpeed = 280.0},
{ model = 514, accel = 0.00064, maxSpeed = 280.0},
{ model = 515, accel = 0.00064, maxSpeed = 280.0},
{ model = 516, accel = 0.00076, maxSpeed = 300.0},
{ model = 517, accel = 0.00076, maxSpeed = 300.0},
{ model = 518, accel = 0.00088, maxSpeed = 330.0},
{ model = 524, accel = 0.00048, maxSpeed = 200.0},
{ model = 525, accel = 0.00064, maxSpeed = 280.0},
{ model = 526, accel = 0.00088, maxSpeed = 330.0},
{ model = 527, accel = 0.00076, maxSpeed = 300.0},
{ model = 528, accel = 0.00064, maxSpeed = 320.0},
{ model = 529, accel = 0.00076, maxSpeed = 300.0},
{ model = 530, accel = 0.00048, maxSpeed = 200.0},
{ model = 531, accel = 0.00048, maxSpeed = 200.0},
{ model = 532, accel = 0.00048, maxSpeed = 200.0},
{ model = 533, accel = 0.00088, maxSpeed = 330.0},
{ model = 534, accel = 0.00088, maxSpeed = 330.0},
{ model = 535, accel = 0.00088, maxSpeed = 330.0},
{ model = 536, accel = 0.00088, maxSpeed = 330.0},
{ model = 540, accel = 0.00076, maxSpeed = 300.0},
{ model = 541, accel = 0.00136, maxSpeed = 460.0},
{ model = 542, accel = 0.00076, maxSpeed = 300.0},
{ model = 543, accel = 0.00076, maxSpeed = 310.0},
{ model = 544, accel = 0.00064, maxSpeed = 220.0},
{ model = 545, accel = 0.00088, maxSpeed = 330.0},
{ model = 546, accel = 0.00076, maxSpeed = 300.0},
{ model = 547, accel = 0.00076, maxSpeed = 300.0},
{ model = 549, accel = 0.00076, maxSpeed = 300.0},
{ model = 550, accel = 0.00076, maxSpeed = 300.0},
{ model = 551, accel = 0.00088, maxSpeed = 330.0},
{ model = 552, accel = 0.00064, maxSpeed = 280.0},
{ model = 554, accel = 0.00076, maxSpeed = 310.0},
{ model = 555, accel = 0.00088, maxSpeed = 330.0},
{ model = 556, accel = 0.00064, maxSpeed = 280.0},
{ model = 557, accel = 0.00064, maxSpeed = 280.0},
{ model = 558, accel = 0.00112, maxSpeed = 400.0},
{ model = 559, accel = 0.00112, maxSpeed = 400.0},
{ model = 560, accel = 0.00112, maxSpeed = 400.0},
{ model = 561, accel = 0.00088, maxSpeed = 330.0},
{ model = 562, accel = 0.00112, maxSpeed = 400.0},
{ model = 565, accel = 0.00088, maxSpeed = 330.0},
{ model = 566, accel = 0.00076, maxSpeed = 300.0},
{ model = 567, accel = 0.00088, maxSpeed = 330.0},
{ model = 568, accel = 0.00096, maxSpeed = 380.0},
{ model = 575, accel = 0.00088, maxSpeed = 330.0},
{ model = 576, accel = 0.00088, maxSpeed = 330.0},
{ model = 578, accel = 0.00064, maxSpeed = 280.0},
{ model = 579, accel = 0.00076, maxSpeed = 310.0},
{ model = 580, accel = 0.00088, maxSpeed = 330.0},
{ model = 582, accel = 0.00064, maxSpeed = 280.0},
{ model = 583, accel = 0.00064, maxSpeed = 280.0},
{ model = 585, accel = 0.00076, maxSpeed = 300.0},
{ model = 587, accel = 0.00112, maxSpeed = 400.0},
{ model = 588, accel = 0.00064, maxSpeed = 280.0},
{ model = 589, accel = 0.00088, maxSpeed = 330.0},
{ model = 596, accel = 0.00096, maxSpeed = 380.0},
{ model = 597, accel = 0.00096, maxSpeed = 380.0},
{ model = 598, accel = 0.00096, maxSpeed = 380.0},
{ model = 599, accel = 0.00076, maxSpeed = 310.0},
{ model = 600, accel = 0.00076, maxSpeed = 310.0},
{ model = 601, accel = 0.00064, maxSpeed = 320.0},
{ model = 602, accel = 0.00112, maxSpeed = 400.0},
{ model = 603, accel = 0.00112, maxSpeed = 400.0},
{ model = 604, accel = 0.00076, maxSpeed = 300.0},
{ model = 605, accel = 0.00076, maxSpeed = 310.0},
{ model = 609, accel = 0.00064, maxSpeed = 280.0},
{ model = 461, accel = 0.00112, maxSpeed = 380.0},
{ model = 462, accel = 0.00096, maxSpeed = 280.0},
{ model = 463, accel = 0.00112, maxSpeed = 380.0},
{ model = 468, accel = 0.00104, maxSpeed = 340.0},
{ model = 471, accel = 0.00088, maxSpeed = 260.0},
{ model = 481, accel = 0.00064, maxSpeed = 220.0},
{ model = 509, accel = 0.00064, maxSpeed = 220.0},
{ model = 521, accel = 0.00136, maxSpeed = 380.0},
{ model = 522, accel = 0.00144, maxSpeed = 380.0},
{ model = 523, accel = 0.00104, maxSpeed = 340.0},
{ model = 581, accel = 0.00112, maxSpeed = 380.0},
{ model = 586, accel = 0.00104, maxSpeed = 340.0},
}

function main()
    while true do
        wait(0)
        if isPlayerPlaying(PLAYER_HANDLE) and isCharInAnyCar(PLAYER_PED) then
            local car = getCarCharIsUsing(PLAYER_PED)
            if doesVehicleExist(car) then
                if getDriverOfCar(car) == PLAYER_PED then
                    local carModel = getCarModel(car)
                    local baseAccel = nil
                    local maxSpeedLimit = nil
                    if #allowedVehicles == 0 then
                        baseAccel = 0.00136
                        maxSpeedLimit = 240.0 / 3.6 * 2
                    else
                        for _, vehicle in ipairs(allowedVehicles) do
                            if vehicle.model == carModel then
                                baseAccel = vehicle.accel
                                maxSpeedLimit = vehicle.maxSpeed
                                break
                            end
                        end
                    end

                    if baseAccel and maxSpeedLimit then
                        local velX, velY, velZ = getCarSpeedVector(car)
                        local speed = math.sqrt(velX^2 + velY^2 + velZ^2)

                        if speed > maxSpeedLimit then
                            local scale = maxSpeedLimit / speed
                            setCarSpeedVector(car, velX * scale, velY * scale, velZ * scale)
                            setCarForwardSpeed(car, maxSpeedLimit)
                            speed = maxSpeedLimit
                        end

                        if isKeyDown(VK_W) then
                            if speed > 0 then
                                local speedFactor = math.max(0.1, 1.0 - (speed / maxSpeedLimit))
                                local accel = baseAccel * speedFactor
                                local dirX, dirY = velX / speed, velY / speed
                                applyForceToCar(car, 
                                    dirX * accel, 
                                    dirY * accel, 
                                    0.0, 
                                    0.0, 0.0, 0.0,
                                    true 
                                )
                            end
                        end
                    end
                end
            end
        end
    end
end