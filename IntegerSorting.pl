	#!/usr/bin/perl
	
	sub Print_List {
		
		my @sub_list = @_;
		$length = scalar @sub_list;
		
		print "\nUnsorted List (length = $length):\n@sub_list\n"
		
	}
	
	sub Populate_List {

		# passing argument    
		my $length = $_[0];

		#Create an empty list
		@array = ();
			
		# array variable to store the passed arguments
		# my @para_list = @_;
		
		# Add as many integers to the array as the length provided
		for ($count = 0 ; $count < $length ; $count++)
		{
			push(@array, int(rand(1000))); # random integers between 0 and 1000
		}		
		
		# send back the array
		return @array;
	}
	
	sub Bubble_Sort {
		
		my @sub_list = @_;
		$length = scalar @sub_list;
		
		for ($outer_pointer = 0 ; $outer_pointer < $length - 1 ; $outer_pointer++)
		{
			for ($inner_pointer = 0 ; $inner_pointer < $length - $outer_pointer - 1 ; $inner_pointer++){
				
				if ($sub_list[$inner_pointer] > $sub_list[$inner_pointer+1]){
					
					#swap
					$temp = $sub_list[$inner_pointer];									# store value of current
					$sub_list[$inner_pointer] = $sub_list[$inner_pointer+1];            # change value of current to smaller value (next)
					$sub_list[$inner_pointer+1] = $temp;								# change value of next to larger value (previous current)					
					
				}
			}
		}
		
		print "\nBubble Sort (length = $length):\n@sub_list\n"
	}
	
	sub Selection_Sort {
		
		my @sub_list = @_;
		$length = scalar @sub_list;
		
		for ($outer_pointer = 0 ; $outer_pointer < $length - 1 ; $outer_pointer++)
		{
			$min = $outer_pointer; # set current value as minimum
			
			for ($inner_pointer = $outer_pointer; $inner_pointer < $length; $inner_pointer++){
				
				if ($sub_list[$min] > $sub_list[$inner_pointer]){
					
					$min = $inner_pointer; # found a smaller value than the current minimum
				}
			}
			
			#swap 
			$temp = $sub_list[$outer_pointer];					    # store value of current
			$sub_list[$outer_pointer] = $sub_list[$min];            # change value of current to smaller value (min)
			$sub_list[$min] = $temp;								# change the min's old position to the larger value					

		}
		
		print "\nSelection Sort (length = $length):\n@sub_list\n"
	}
	
	sub Insertion_Sort {
		
		my @sub_list = @_;
		$length = scalar @sub_list;
		
		for ($outer_pointer = 1 ; $outer_pointer < $length; $outer_pointer++)
		{				
			for($inner_pointer = $outer_pointer - 1; $inner_pointer >= 0; $inner_pointer--){
				
				if ($sub_list[$inner_pointer+1] < $sub_list[$inner_pointer]){
					
					#swap
					$temp = $sub_list[$inner_pointer];					   				# store value of current
					$sub_list[$inner_pointer] = $sub_list[$inner_pointer+1];            # change value of current to smaller value (inner+1)
					$sub_list[$inner_pointer+1] = $temp;								# change the inner+1's old position to the larger value						
					
				}
			}
		}
		
		print "\nInsertion Sort (length = $length):\n@sub_list\n"
	}	
	
	sub merge {
		
		$left = $_;
		$mid = $_;
		$right = $_;
		
		$size_left = $mid - $left + 1;
		$size_right = $right - $mid;
		
		@left_temp;
		@right_temp;
		
	
	}
	
	sub Merge_Sort {
		
		my @sub_list = @_;
		$length = scalar @sub_list;
		
		
		
		print "\nMerge Sort (length = $length):\n@sub_list\n"
	}

	
	
	$arraySize = 50; 
	#$arraySize = 10;
	
	@returned_list = Populate_List($arraySize);
	
	foreach $elem (@returned_list)
	{
		push(@unsorted_list, $elem);
	}	

	print "\nOriginal List\n@returned_list\n-----------------------------------------------------------------------------------";
	
	Print_List(@unsorted_list);
	Bubble_Sort(@unsorted_list);
	
	Print_List(@unsorted_list);
	Selection_Sort(@unsorted_list);
	
	Print_List(@unsorted_list);
	Insertion_Sort(@unsorted_list);
	
	Print_List(@unsorted_list);
	Merge_Sort(\@unsorted_list, 0, $arraySize-1);	