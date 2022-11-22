#[tarantool::proc]
fn calc_sum(a1: isize, a2: isize) -> isize {
    add(a1, a2)
}

#[must_use]
pub fn add(left: isize, right: isize) -> isize {
    left + right
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = add(2, 2);
        assert_eq!(result, 4);
    }
}
