# Democritus Dicts

[![PyPI](https://img.shields.io/pypi/v/d8s-dicts.svg)](https://pypi.python.org/pypi/d8s-dicts)
[![CI](https://github.com/democritus-project/d8s-dicts/workflows/CI/badge.svg)](https://github.com/democritus-project/d8s-dicts/actions)
[![Lint](https://github.com/democritus-project/d8s-dicts/workflows/Lint/badge.svg)](https://github.com/democritus-project/d8s-dicts/actions)
[![codecov](https://codecov.io/gh/democritus-project/d8s-dicts/branch/main/graph/badge.svg?token=V0WOIXRGMM)](https://codecov.io/gh/democritus-project/d8s-dicts)
[![The Democritus Project uses semver version 2.0.0](https://img.shields.io/badge/-semver%20v2.0.0-22bfda)](https://semver.org/spec/v2.0.0.html)
[![The Democritus Project uses black to format code](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![License: LGPL v3](https://img.shields.io/badge/License-LGPL%20v3-blue.svg)](https://choosealicense.com/licenses/lgpl-3.0/)

Democritus functions<sup>[1]</sup> for working with Python dictionaries.

[1] Democritus functions are <i>simple, effective, modular, well-tested, and well-documented</i> Python functions.

We use `d8s` (pronounced "dee-eights") as an abbreviation for `democritus` (you can read more about this [here](https://github.com/democritus-project/roadmap#what-is-d8s)).

## Installation

```
pip install d8s-dicts
```

## Usage

You import the library like:

```python
from d8s_dicts import *
```

Once imported, you can use any of the functions listed below.

## Functions

  - ```python
    def dict_filter_by_values(dictionary: dict, filter_function: Callable) -> dict:
        """."""
    ```
  - ```python
    def dict_filter_by_keys(dictionary: dict, filter_function: Callable) -> dict:
        """."""
    ```
  - ```python
    def is_dict(possible_dict: Any) -> bool:
        """Return whether or not the possible_dict is a dictionary."""
    ```
  - ```python
    def dict_keys(dictionary: dict) -> List[Any]:
        """Get the dictionary's keys (as a list)."""
    ```
  - ```python
    def is_valid_dict_key(key: Any) -> bool:
        """Return whether or not a dictionary could have the given key."""
    ```
  - ```python
    def dict_values(dictionary: dict) -> List[Any]:
        """Get the dictionary's values (as a list)."""
    ```
  - ```python
    def dict_has_value(dictionary: dict, value) -> bool:
        """Return whether or not the dictionary has the given value (without evaluating the value)."""
    ```
  - ```python
    def dict_key_types(dictionary: dict) -> list:
        """Return a list with the type of each key in the dictionary."""
    ```
  - ```python
    def dict_value_types(dictionary: dict) -> dict:
        """Return a dictionary with the same keys and the type of each value in place of the actual value."""
    ```
  - ```python
    def dict_keys_with_value(dictionary: dict, value):
        """Find the key(s) in the dictionary which have the given value."""
    ```
  - ```python
    def dict_sort_by_keys(dictionary: dict, **kwargs) -> collections.OrderedDict:
        """Sort the dictionary based on the dictionary's keys."""
    ```
  - ```python
    def dict_sort_by_values(dictionary: dict, **kwargs) -> collections.OrderedDict:
        """Sort the dictionary based on the dictionary's values."""
    ```
  - ```python
    def dicts_sort_by_value_at_key(dictionaries: List[Dict[Any, Any]], key, **kwargs) -> List[Dict[Any, Any]]:
        """Sort the given dictionaries (we are assuming that we get a list of dictionaries) based on each dictionary's value at the given key."""
    ```
  - ```python
    def dict_flip(dictionary: dict, *, flatten_values: bool = False, flip_lists_and_sets: bool = False) -> dict:
        """Flip the dictionary's keys and values; all of the values become keys and keys become values."""
    ```
  - ```python
    def dict_delistify_values(dictionary: dict) -> dict:
        """For all values in the given dictionary that are lists whose lengths are one, replace the list of length one with the value in the list."""
    ```
  - ```python
    def dict_examples(n: int = 10, **kwargs) -> List[Dict[Any, Any]]:
        """Create n dictionary examples."""
    ```
  - ```python
    def dict_add(dictionary: Dict[Any, List[Any]], key: Any, value: Any) -> Dict[Any, List[Any]]:
        """Add the given value to the dictionary at the given key. This function expects that all values of the dictionary parameter are lists."""
    ```
  - ```python
    def dicts_diffs(dictionary_a: dict, dictionary_b: dict) -> list:
        """."""
    ```
  - ```python
    def dict_copy_value_at_key(dictionary: dict, key: Any, new_key: Any) -> dict:
        """Copy the value at the given key into the new key."""
    ```
  - ```python
    def dict_move_value_at_key(dictionary: dict, old_key: Any, new_key: Any) -> dict:
        """Move the given key and its values into the new key."""
    ```
  - ```python
    def dict_key_delete(dictionary: dict, key: Any) -> dict:
        """Delete the given key from the given dictionary."""
    ```
  - ```python
    def dict_delete_items(dictionary: dict, values_to_delete: List[Any] = None, keys_to_delete: List[Any] = None) -> dict:
        """Delete all items from the dictionary if the item's value is in values_to_delete or the item's key is in keys_to_delete."""
    ```
  - ```python
    def dict_delete_empty_values(dictionary: dict) -> dict:
        """Delete all key-values pairs from the dictionary if the value is an empty strings, empty list, zero, False or None."""
    ```
  - ```python
    def dict_keys_with_max_value(dictionary: dict) -> List[DictKeyType]:
        """."""
    ```
  - ```python
    def dict_keys_with_min_value(dictionary: dict) -> List[DictKeyType]:
        """."""
    ```
  - ```python
    def dict_value_with_max_key(dictionary: dict) -> Any:
        """."""
    ```
  - ```python
    def dict_value_with_min_key(dictionary: dict) -> Any:
        """."""
    ```

## Development

👋 &nbsp;If you want to get involved in this project, we have some short, helpful guides below:

- [contribute to this project 🥇][contributing]
- [test it 🧪][local-dev]
- [lint it 🧹][local-dev]
- [explore it 🔭][local-dev]

If you have any questions or there is anything we did not cover, please raise an issue and we'll be happy to help.

## Credits

This package was created with [Cookiecutter](https://github.com/audreyr/cookiecutter) and Floyd Hightower's [Python project template](https://github.com/fhightower-templates/python-project-template).

[contributing]: https://github.com/democritus-project/.github/blob/main/CONTRIBUTING.md#contributing-a-pr-
[local-dev]: https://github.com/democritus-project/.github/blob/main/CONTRIBUTING.md#local-development-
