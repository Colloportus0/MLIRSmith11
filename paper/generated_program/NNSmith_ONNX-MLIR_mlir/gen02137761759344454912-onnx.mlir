module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 3 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_2(dense<[[[[5, 5], [7, 4]], [[6, 6], [7, 7]]]]> : tensor<1x2x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<[[[[3], [5]], [[3], [5]]]]> : tensor<1x2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<[[[[5, 6]]], [[[7, 5]]]]> : tensor<2x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<1 x array<1 x array<2 x i32>>>>>
    %14 = llvm.bitcast %13 : !llvm.ptr<array<2 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(2 : index) : i64
    %21 = llvm.insertvalue %20, %19[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.insertvalue %22, %21[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(2 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(4 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(2 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(2 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>>
    %60 = llvm.bitcast %59 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %62 = llvm.insertvalue %60, %61[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(8 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(2 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(4 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.insertvalue %74, %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.insertvalue %76, %75[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.insertvalue %78, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(2 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(4 : index) : i64
    %88 = llvm.mlir.constant(8 : index) : i64
    %89 = llvm.mlir.constant(16 : index) : i64
    %90 = llvm.mlir.null : !llvm.ptr<i32>
    %91 = llvm.getelementptr %90[%89] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %92 = llvm.ptrtoint %91 : !llvm.ptr<i32> to i64
    %93 = llvm.mlir.constant(16 : index) : i64
    %94 = llvm.add %92, %93  : i64
    %95 = llvm.call @malloc(%94) : (i64) -> !llvm.ptr<i8>
    %96 = llvm.bitcast %95 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %97 = llvm.ptrtoint %96 : !llvm.ptr<i32> to i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.sub %93, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.urem %100, %93  : i64
    %102 = llvm.sub %100, %101  : i64
    %103 = llvm.inttoptr %102 : i64 to !llvm.ptr<i32>
    %104 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %105 = llvm.insertvalue %96, %104[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %103, %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.insertvalue %107, %106[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %82, %108[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %83, %109[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %84, %110[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %85, %111[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %88, %112[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %87, %113[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %85, %114[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %86, %115[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%117 : i64)
  ^bb1(%120: i64):  // 2 preds: ^bb0, ^bb11
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%122 : i64)
  ^bb3(%125: i64):  // 2 preds: ^bb2, ^bb10
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%127 : i64)
  ^bb5(%130: i64):  // 2 preds: ^bb4, ^bb9
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%132 : i64)
  ^bb7(%135: i64):  // 2 preds: ^bb6, ^bb8
    %136 = llvm.icmp "slt" %135, %133 : i64
    llvm.cond_br %136, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %137 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(4 : index) : i64
    %139 = llvm.mul %12, %138  : i64
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mul %125, %140  : i64
    %142 = llvm.add %139, %141  : i64
    %143 = llvm.add %142, %130  : i64
    %144 = llvm.add %143, %12  : i64
    %145 = llvm.getelementptr %137[%144] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %146 = llvm.load %145 : !llvm.ptr<i32>
    %147 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mul %120, %148  : i64
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mul %12, %150  : i64
    %152 = llvm.add %149, %151  : i64
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mul %12, %153  : i64
    %155 = llvm.add %152, %154  : i64
    %156 = llvm.add %155, %135  : i64
    %157 = llvm.getelementptr %147[%156] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %158 = llvm.load %157 : !llvm.ptr<i32>
    %159 = llvm.icmp "slt" %146, %158 : i32
    %160 = llvm.select %159, %146, %158 : i1, i32
    %161 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.mlir.constant(8 : index) : i64
    %163 = llvm.mul %120, %162  : i64
    %164 = llvm.mlir.constant(4 : index) : i64
    %165 = llvm.mul %125, %164  : i64
    %166 = llvm.add %163, %165  : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mul %130, %167  : i64
    %169 = llvm.add %166, %168  : i64
    %170 = llvm.add %169, %135  : i64
    %171 = llvm.getelementptr %161[%170] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %160, %171 : !llvm.ptr<i32>
    %172 = llvm.add %135, %134  : i64
    llvm.br ^bb7(%172 : i64)
  ^bb9:  // pred: ^bb7
    %173 = llvm.add %130, %129  : i64
    llvm.br ^bb5(%173 : i64)
  ^bb10:  // pred: ^bb5
    %174 = llvm.add %125, %124  : i64
    llvm.br ^bb3(%174 : i64)
  ^bb11:  // pred: ^bb3
    %175 = llvm.add %120, %119  : i64
    llvm.br ^bb1(%175 : i64)
  ^bb12:  // pred: ^bb1
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mlir.constant(2 : index) : i64
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mlir.constant(2 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(4 : index) : i64
    %182 = llvm.mlir.constant(8 : index) : i64
    %183 = llvm.mlir.constant(16 : index) : i64
    %184 = llvm.mlir.null : !llvm.ptr<i32>
    %185 = llvm.getelementptr %184[%183] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %186 = llvm.ptrtoint %185 : !llvm.ptr<i32> to i64
    %187 = llvm.mlir.constant(16 : index) : i64
    %188 = llvm.add %186, %187  : i64
    %189 = llvm.call @malloc(%188) : (i64) -> !llvm.ptr<i8>
    %190 = llvm.bitcast %189 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %191 = llvm.ptrtoint %190 : !llvm.ptr<i32> to i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.sub %187, %192  : i64
    %194 = llvm.add %191, %193  : i64
    %195 = llvm.urem %194, %187  : i64
    %196 = llvm.sub %194, %195  : i64
    %197 = llvm.inttoptr %196 : i64 to !llvm.ptr<i32>
    %198 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %199 = llvm.insertvalue %190, %198[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %197, %199[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.insertvalue %201, %200[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.insertvalue %176, %202[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %177, %203[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %178, %204[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %179, %205[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.insertvalue %182, %206[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %181, %207[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %179, %208[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %180, %209[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%211 : i64)
  ^bb13(%214: i64):  // 2 preds: ^bb12, ^bb23
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(2 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%216 : i64)
  ^bb15(%219: i64):  // 2 preds: ^bb14, ^bb22
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%221 : i64)
  ^bb17(%224: i64):  // 2 preds: ^bb16, ^bb21
    %225 = llvm.icmp "slt" %224, %222 : i64
    llvm.cond_br %225, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.mlir.constant(2 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%226 : i64)
  ^bb19(%229: i64):  // 2 preds: ^bb18, ^bb20
    %230 = llvm.icmp "slt" %229, %227 : i64
    llvm.cond_br %230, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %231 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.mlir.constant(8 : index) : i64
    %233 = llvm.mul %12, %232  : i64
    %234 = llvm.mlir.constant(4 : index) : i64
    %235 = llvm.mul %219, %234  : i64
    %236 = llvm.add %233, %235  : i64
    %237 = llvm.mlir.constant(2 : index) : i64
    %238 = llvm.mul %224, %237  : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.add %239, %229  : i64
    %241 = llvm.getelementptr %231[%240] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %242 = llvm.load %241 : !llvm.ptr<i32>
    %243 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.mlir.constant(8 : index) : i64
    %245 = llvm.mul %214, %244  : i64
    %246 = llvm.mlir.constant(4 : index) : i64
    %247 = llvm.mul %219, %246  : i64
    %248 = llvm.add %245, %247  : i64
    %249 = llvm.mlir.constant(2 : index) : i64
    %250 = llvm.mul %224, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.add %251, %229  : i64
    %253 = llvm.getelementptr %243[%252] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %254 = llvm.load %253 : !llvm.ptr<i32>
    %255 = llvm.sub %242, %254  : i32
    %256 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.mlir.constant(8 : index) : i64
    %258 = llvm.mul %214, %257  : i64
    %259 = llvm.mlir.constant(4 : index) : i64
    %260 = llvm.mul %219, %259  : i64
    %261 = llvm.add %258, %260  : i64
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mul %224, %262  : i64
    %264 = llvm.add %261, %263  : i64
    %265 = llvm.add %264, %229  : i64
    %266 = llvm.getelementptr %256[%265] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %255, %266 : !llvm.ptr<i32>
    %267 = llvm.add %229, %228  : i64
    llvm.br ^bb19(%267 : i64)
  ^bb21:  // pred: ^bb19
    %268 = llvm.add %224, %223  : i64
    llvm.br ^bb17(%268 : i64)
  ^bb22:  // pred: ^bb17
    %269 = llvm.add %219, %218  : i64
    llvm.br ^bb15(%269 : i64)
  ^bb23:  // pred: ^bb15
    %270 = llvm.add %214, %213  : i64
    llvm.br ^bb13(%270 : i64)
  ^bb24:  // pred: ^bb13
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mlir.constant(2 : index) : i64
    %273 = llvm.mlir.constant(3 : index) : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(6 : index) : i64
    %277 = llvm.mlir.constant(12 : index) : i64
    %278 = llvm.mlir.constant(24 : index) : i64
    %279 = llvm.mlir.null : !llvm.ptr<i32>
    %280 = llvm.getelementptr %279[%278] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %281 = llvm.ptrtoint %280 : !llvm.ptr<i32> to i64
    %282 = llvm.mlir.constant(16 : index) : i64
    %283 = llvm.add %281, %282  : i64
    %284 = llvm.call @malloc(%283) : (i64) -> !llvm.ptr<i8>
    %285 = llvm.bitcast %284 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %286 = llvm.ptrtoint %285 : !llvm.ptr<i32> to i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.sub %282, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.urem %289, %282  : i64
    %291 = llvm.sub %289, %290  : i64
    %292 = llvm.inttoptr %291 : i64 to !llvm.ptr<i32>
    %293 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %294 = llvm.insertvalue %285, %293[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %292, %294[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.insertvalue %296, %295[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %271, %297[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %272, %298[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %273, %299[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %274, %300[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %277, %301[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %276, %302[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %274, %303[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %275, %304[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.mlir.constant(2 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%306 : i64)
  ^bb25(%309: i64):  // 2 preds: ^bb24, ^bb35
    %310 = llvm.icmp "slt" %309, %307 : i64
    llvm.cond_br %310, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(2 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%311 : i64)
  ^bb27(%314: i64):  // 2 preds: ^bb26, ^bb34
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%316 : i64)
  ^bb29(%319: i64):  // 2 preds: ^bb28, ^bb33
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%321 : i64)
  ^bb31(%324: i64):  // 2 preds: ^bb30, ^bb32
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %326 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.mlir.constant(4 : index) : i64
    %328 = llvm.mul %309, %327  : i64
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mul %314, %329  : i64
    %331 = llvm.add %328, %330  : i64
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mul %319, %332  : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.add %334, %324  : i64
    %336 = llvm.getelementptr %326[%335] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %337 = llvm.load %336 : !llvm.ptr<i32>
    %338 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.mlir.constant(12 : index) : i64
    %340 = llvm.mul %309, %339  : i64
    %341 = llvm.mlir.constant(6 : index) : i64
    %342 = llvm.mul %314, %341  : i64
    %343 = llvm.add %340, %342  : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mul %319, %344  : i64
    %346 = llvm.add %343, %345  : i64
    %347 = llvm.add %346, %324  : i64
    %348 = llvm.getelementptr %338[%347] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %337, %348 : !llvm.ptr<i32>
    %349 = llvm.add %324, %323  : i64
    llvm.br ^bb31(%349 : i64)
  ^bb33:  // pred: ^bb31
    %350 = llvm.add %319, %318  : i64
    llvm.br ^bb29(%350 : i64)
  ^bb34:  // pred: ^bb29
    %351 = llvm.add %314, %313  : i64
    llvm.br ^bb27(%351 : i64)
  ^bb35:  // pred: ^bb27
    %352 = llvm.add %309, %308  : i64
    llvm.br ^bb25(%352 : i64)
  ^bb36:  // pred: ^bb25
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%353 : i64)
  ^bb37(%356: i64):  // 2 preds: ^bb36, ^bb47
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%358 : i64)
  ^bb39(%361: i64):  // 2 preds: ^bb38, ^bb46
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(2 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%363 : i64)
  ^bb41(%366: i64):  // 2 preds: ^bb40, ^bb45
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%368 : i64)
  ^bb43(%371: i64):  // 2 preds: ^bb42, ^bb44
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.add %366, %373  : i64
    %375 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.mlir.constant(8 : index) : i64
    %377 = llvm.mul %356, %376  : i64
    %378 = llvm.mlir.constant(4 : index) : i64
    %379 = llvm.mul %361, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mul %366, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.add %383, %371  : i64
    %385 = llvm.getelementptr %375[%384] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %386 = llvm.load %385 : !llvm.ptr<i32>
    %387 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.mlir.constant(12 : index) : i64
    %389 = llvm.mul %356, %388  : i64
    %390 = llvm.mlir.constant(6 : index) : i64
    %391 = llvm.mul %361, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mul %374, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.add %395, %371  : i64
    %397 = llvm.getelementptr %387[%396] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %386, %397 : !llvm.ptr<i32>
    %398 = llvm.add %371, %370  : i64
    llvm.br ^bb43(%398 : i64)
  ^bb45:  // pred: ^bb43
    %399 = llvm.add %366, %365  : i64
    llvm.br ^bb41(%399 : i64)
  ^bb46:  // pred: ^bb41
    %400 = llvm.add %361, %360  : i64
    llvm.br ^bb39(%400 : i64)
  ^bb47:  // pred: ^bb39
    %401 = llvm.add %356, %355  : i64
    llvm.br ^bb37(%401 : i64)
  ^bb48:  // pred: ^bb37
    %402 = llvm.mlir.constant(2 : index) : i64
    %403 = llvm.mlir.constant(2 : index) : i64
    %404 = llvm.mlir.constant(3 : index) : i64
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(6 : index) : i64
    %408 = llvm.mlir.constant(12 : index) : i64
    %409 = llvm.mlir.constant(24 : index) : i64
    %410 = llvm.mlir.null : !llvm.ptr<i32>
    %411 = llvm.getelementptr %410[%409] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %412 = llvm.ptrtoint %411 : !llvm.ptr<i32> to i64
    %413 = llvm.mlir.constant(16 : index) : i64
    %414 = llvm.add %412, %413  : i64
    %415 = llvm.call @malloc(%414) : (i64) -> !llvm.ptr<i8>
    %416 = llvm.bitcast %415 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %417 = llvm.ptrtoint %416 : !llvm.ptr<i32> to i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.sub %413, %418  : i64
    %420 = llvm.add %417, %419  : i64
    %421 = llvm.urem %420, %413  : i64
    %422 = llvm.sub %420, %421  : i64
    %423 = llvm.inttoptr %422 : i64 to !llvm.ptr<i32>
    %424 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %425 = llvm.insertvalue %416, %424[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.insertvalue %423, %425[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.insertvalue %427, %426[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %402, %428[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %403, %429[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %404, %430[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %405, %431[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %408, %432[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %407, %433[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %405, %434[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %406, %435[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.mlir.constant(0 : index) : i64
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%437 : i64)
  ^bb49(%440: i64):  // 2 preds: ^bb48, ^bb59
    %441 = llvm.icmp "slt" %440, %438 : i64
    llvm.cond_br %441, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%442 : i64)
  ^bb51(%445: i64):  // 2 preds: ^bb50, ^bb58
    %446 = llvm.icmp "slt" %445, %443 : i64
    llvm.cond_br %446, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.mlir.constant(3 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%447 : i64)
  ^bb53(%450: i64):  // 2 preds: ^bb52, ^bb57
    %451 = llvm.icmp "slt" %450, %448 : i64
    llvm.cond_br %451, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.mlir.constant(2 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%452 : i64)
  ^bb55(%455: i64):  // 2 preds: ^bb54, ^bb56
    %456 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %456, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %457 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.mlir.constant(12 : index) : i64
    %459 = llvm.mul %440, %458  : i64
    %460 = llvm.mlir.constant(6 : index) : i64
    %461 = llvm.mul %445, %460  : i64
    %462 = llvm.add %459, %461  : i64
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mul %450, %463  : i64
    %465 = llvm.add %462, %464  : i64
    %466 = llvm.add %465, %455  : i64
    %467 = llvm.getelementptr %457[%466] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %468 = llvm.load %467 : !llvm.ptr<i32>
    %469 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.mlir.constant(12 : index) : i64
    %471 = llvm.mul %440, %470  : i64
    %472 = llvm.mlir.constant(6 : index) : i64
    %473 = llvm.mul %445, %472  : i64
    %474 = llvm.add %471, %473  : i64
    %475 = llvm.mlir.constant(2 : index) : i64
    %476 = llvm.mul %450, %475  : i64
    %477 = llvm.add %474, %476  : i64
    %478 = llvm.add %477, %455  : i64
    %479 = llvm.getelementptr %469[%478] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %480 = llvm.load %479 : !llvm.ptr<i32>
    %481 = llvm.icmp "sgt" %468, %480 : i32
    %482 = llvm.select %481, %468, %480 : i1, i32
    %483 = llvm.extractvalue %436[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.mlir.constant(12 : index) : i64
    %485 = llvm.mul %440, %484  : i64
    %486 = llvm.mlir.constant(6 : index) : i64
    %487 = llvm.mul %445, %486  : i64
    %488 = llvm.add %485, %487  : i64
    %489 = llvm.mlir.constant(2 : index) : i64
    %490 = llvm.mul %450, %489  : i64
    %491 = llvm.add %488, %490  : i64
    %492 = llvm.add %491, %455  : i64
    %493 = llvm.getelementptr %483[%492] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %482, %493 : !llvm.ptr<i32>
    %494 = llvm.add %455, %454  : i64
    llvm.br ^bb55(%494 : i64)
  ^bb57:  // pred: ^bb55
    %495 = llvm.add %450, %449  : i64
    llvm.br ^bb53(%495 : i64)
  ^bb58:  // pred: ^bb53
    %496 = llvm.add %445, %444  : i64
    llvm.br ^bb51(%496 : i64)
  ^bb59:  // pred: ^bb51
    %497 = llvm.add %440, %439  : i64
    llvm.br ^bb49(%497 : i64)
  ^bb60:  // pred: ^bb49
    llvm.return %436 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(3 : i64) : i64
    %75 = llvm.extractvalue %44[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %57[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %44[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %58[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.getelementptr %48[%79] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %80 : !llvm.ptr<ptr<i8>>
    %81 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %81 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

