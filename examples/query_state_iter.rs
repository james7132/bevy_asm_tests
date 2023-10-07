use bevy_ecs::prelude::*;

#[derive(Component)]
pub struct A(f32);

#[derive(Component)]
pub struct B(f32);

#[no_mangle]
fn query_state_iter(query: &mut QueryState<(&mut A, &B)>, world: &mut World) {
    for (mut a, b) in query.iter_mut(world) {
        a.0 += b.0;
    }
}
