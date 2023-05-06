module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<[[[[[3]]], [[[5]]]], [[[[7]]], [[[6]]]]]> : tensor<2x2x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<1 x array<1 x array<1 x i32>>>>>
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 2]> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 1, 2]> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg8, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.constant(1 : i64) : i64
    %11 = llvm.mlir.constant(0 : i64) : i64
    %12 = llvm.mlir.constant(-1 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<3 x i64>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(3 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<3 x i64>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(3 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<2 x array<2 x array<1 x array<1 x array<1 x i32>>>>>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<2 x array<2 x array<1 x array<1 x array<1 x i32>>>>>> to !llvm.ptr<i32>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %50 = llvm.mlir.constant(2 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %52 = llvm.mlir.constant(2 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.mlir.constant(2 : index) : i64
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mlir.constant(4 : index) : i64
    %78 = llvm.mlir.constant(8 : index) : i64
    %79 = llvm.mlir.null : !llvm.ptr<i32>
    %80 = llvm.getelementptr %79[%78] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %81 = llvm.ptrtoint %80 : !llvm.ptr<i32> to i64
    %82 = llvm.mlir.constant(16 : index) : i64
    %83 = llvm.add %81, %82  : i64
    %84 = llvm.call @malloc(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.bitcast %84 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %86 = llvm.ptrtoint %85 : !llvm.ptr<i32> to i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.sub %82, %87  : i64
    %89 = llvm.add %86, %88  : i64
    %90 = llvm.urem %89, %82  : i64
    %91 = llvm.sub %89, %90  : i64
    %92 = llvm.inttoptr %91 : i64 to !llvm.ptr<i32>
    %93 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %94 = llvm.insertvalue %85, %93[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %95 = llvm.insertvalue %92, %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.insertvalue %96, %95[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %98 = llvm.insertvalue %70, %97[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %99 = llvm.insertvalue %71, %98[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %100 = llvm.insertvalue %72, %99[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %101 = llvm.insertvalue %73, %100[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %102 = llvm.insertvalue %74, %101[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %103 = llvm.insertvalue %77, %102[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %104 = llvm.insertvalue %76, %103[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %105 = llvm.insertvalue %73, %104[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %106 = llvm.insertvalue %74, %105[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %107 = llvm.insertvalue %75, %106[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%108 : i64)
  ^bb1(%111: i64):  // 2 preds: ^bb0, ^bb14
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%113 : i64)
  ^bb3(%116: i64):  // 2 preds: ^bb2, ^bb13
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%118 : i64)
  ^bb5(%121: i64):  // 2 preds: ^bb4, ^bb12
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%123 : i64)
  ^bb7(%126: i64):  // 2 preds: ^bb6, ^bb11
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%128 : i64)
  ^bb9(%131: i64):  // 2 preds: ^bb8, ^bb10
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %133 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %121, %134  : i64
    %136 = llvm.add %135, %126  : i64
    %137 = llvm.add %136, %131  : i64
    %138 = llvm.getelementptr %133[%137] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %139 = llvm.load %138 : !llvm.ptr<i32>
    %140 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %141 = llvm.mlir.constant(2 : index) : i64
    %142 = llvm.mul %111, %141  : i64
    %143 = llvm.add %142, %116  : i64
    %144 = llvm.add %143, %121  : i64
    %145 = llvm.add %144, %13  : i64
    %146 = llvm.add %145, %131  : i64
    %147 = llvm.getelementptr %140[%146] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %148 = llvm.load %147 : !llvm.ptr<i32>
    %149 = llvm.icmp "slt" %139, %148 : i32
    %150 = llvm.select %149, %139, %148 : i1, i32
    %151 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %152 = llvm.mlir.constant(4 : index) : i64
    %153 = llvm.mul %111, %152  : i64
    %154 = llvm.mlir.constant(2 : index) : i64
    %155 = llvm.mul %116, %154  : i64
    %156 = llvm.add %153, %155  : i64
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mul %121, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.add %159, %126  : i64
    %161 = llvm.add %160, %131  : i64
    %162 = llvm.getelementptr %151[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %150, %162 : !llvm.ptr<i32>
    %163 = llvm.add %131, %130  : i64
    llvm.br ^bb9(%163 : i64)
  ^bb11:  // pred: ^bb9
    %164 = llvm.add %126, %125  : i64
    llvm.br ^bb7(%164 : i64)
  ^bb12:  // pred: ^bb7
    %165 = llvm.add %121, %120  : i64
    llvm.br ^bb5(%165 : i64)
  ^bb13:  // pred: ^bb5
    %166 = llvm.add %116, %115  : i64
    llvm.br ^bb3(%166 : i64)
  ^bb14:  // pred: ^bb3
    %167 = llvm.add %111, %110  : i64
    llvm.br ^bb1(%167 : i64)
  ^bb15:  // pred: ^bb1
    %168 = llvm.mlir.constant(2 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mlir.constant(4 : index) : i64
    %175 = llvm.mlir.null : !llvm.ptr<i64>
    %176 = llvm.getelementptr %175[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %177 = llvm.ptrtoint %176 : !llvm.ptr<i64> to i64
    %178 = llvm.mlir.constant(16 : index) : i64
    %179 = llvm.add %177, %178  : i64
    %180 = llvm.call @malloc(%179) : (i64) -> !llvm.ptr<i8>
    %181 = llvm.bitcast %180 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %182 = llvm.ptrtoint %181 : !llvm.ptr<i64> to i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.sub %178, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.urem %185, %178  : i64
    %187 = llvm.sub %185, %186  : i64
    %188 = llvm.inttoptr %187 : i64 to !llvm.ptr<i64>
    %189 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %190 = llvm.insertvalue %181, %189[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %188, %190[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.insertvalue %192, %191[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %168, %193[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %169, %194[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %170, %195[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %171, %196[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %173, %197[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %170, %198[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %171, %199[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %172, %200[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%202 : i64)
  ^bb16(%205: i64):  // 2 preds: ^bb15, ^bb26
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%207 : i64)
  ^bb18(%210: i64):  // 2 preds: ^bb17, ^bb25
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%212 : i64)
  ^bb20(%215: i64):  // 2 preds: ^bb19, ^bb24
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%217 : i64)
  ^bb22(%220: i64):  // 2 preds: ^bb21, ^bb23
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %222 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mul %205, %223  : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mul %210, %225  : i64
    %227 = llvm.add %224, %226  : i64
    %228 = llvm.add %227, %215  : i64
    %229 = llvm.add %228, %220  : i64
    %230 = llvm.getelementptr %222[%229] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %230 : !llvm.ptr<i64>
    %231 = llvm.add %220, %219  : i64
    llvm.br ^bb22(%231 : i64)
  ^bb24:  // pred: ^bb22
    %232 = llvm.add %215, %214  : i64
    llvm.br ^bb20(%232 : i64)
  ^bb25:  // pred: ^bb20
    %233 = llvm.add %210, %209  : i64
    llvm.br ^bb18(%233 : i64)
  ^bb26:  // pred: ^bb18
    %234 = llvm.add %205, %204  : i64
    llvm.br ^bb16(%234 : i64)
  ^bb27:  // pred: ^bb16
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%235 : i64)
  ^bb28(%238: i64):  // 2 preds: ^bb27, ^bb41
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%240 : i64)
  ^bb30(%243: i64):  // 2 preds: ^bb29, ^bb40
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%245 : i64)
  ^bb32(%248: i64):  // 2 preds: ^bb31, ^bb39
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%250 : i64)
  ^bb34(%253: i64):  // 2 preds: ^bb33, ^bb38
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%255 : i64)
  ^bb36(%258: i64):  // 2 preds: ^bb35, ^bb37
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %260 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %261 = llvm.mlir.constant(4 : index) : i64
    %262 = llvm.mul %238, %261  : i64
    %263 = llvm.mlir.constant(2 : index) : i64
    %264 = llvm.mul %243, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mul %248, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.add %268, %253  : i64
    %270 = llvm.add %269, %258  : i64
    %271 = llvm.getelementptr %260[%270] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %272 = llvm.load %271 : !llvm.ptr<i32>
    %273 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mul %243, %274  : i64
    %276 = llvm.mlir.constant(2 : index) : i64
    %277 = llvm.mul %248, %276  : i64
    %278 = llvm.add %275, %277  : i64
    %279 = llvm.add %278, %253  : i64
    %280 = llvm.add %279, %258  : i64
    %281 = llvm.getelementptr %273[%280] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %282 = llvm.load %281 : !llvm.ptr<i64>
    %283 = llvm.icmp "slt" %282, %11 : i64
    %284 = llvm.select %283, %11, %282 : i1, i64
    %285 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mul %284, %286  : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mul %243, %288  : i64
    %290 = llvm.add %287, %289  : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mul %248, %291  : i64
    %293 = llvm.add %290, %292  : i64
    %294 = llvm.add %293, %253  : i64
    %295 = llvm.add %294, %258  : i64
    %296 = llvm.getelementptr %285[%295] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %297 = llvm.load %296 : !llvm.ptr<i32>
    %298 = llvm.icmp "sgt" %272, %297 : i32
    %299 = llvm.select %298, %238, %284 : i1, i64
    %300 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mul %243, %301  : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %248, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.add %305, %253  : i64
    %307 = llvm.add %306, %258  : i64
    %308 = llvm.getelementptr %300[%307] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %299, %308 : !llvm.ptr<i64>
    %309 = llvm.add %258, %257  : i64
    llvm.br ^bb36(%309 : i64)
  ^bb38:  // pred: ^bb36
    %310 = llvm.add %253, %252  : i64
    llvm.br ^bb34(%310 : i64)
  ^bb39:  // pred: ^bb34
    %311 = llvm.add %248, %247  : i64
    llvm.br ^bb32(%311 : i64)
  ^bb40:  // pred: ^bb32
    %312 = llvm.add %243, %242  : i64
    llvm.br ^bb30(%312 : i64)
  ^bb41:  // pred: ^bb30
    %313 = llvm.add %238, %237  : i64
    llvm.br ^bb28(%313 : i64)
  ^bb42:  // pred: ^bb28
    %314 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %315 = llvm.extractvalue %107[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %316 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %317 = llvm.insertvalue %315, %314[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %316, %317[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.insertvalue %319, %318[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.insertvalue %321, %320[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.mlir.constant(4 : index) : i64
    %324 = llvm.insertvalue %323, %322[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.insertvalue %325, %324[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.insertvalue %327, %326[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.insertvalue %329, %328[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.insertvalue %331, %330[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.insertvalue %333, %332[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.insertvalue %335, %334[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.constant(2 : index) : i64
    %342 = llvm.mlir.constant(4 : index) : i64
    %343 = llvm.mlir.null : !llvm.ptr<i64>
    %344 = llvm.getelementptr %343[%342] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %345 = llvm.ptrtoint %344 : !llvm.ptr<i64> to i64
    %346 = llvm.mlir.constant(16 : index) : i64
    %347 = llvm.add %345, %346  : i64
    %348 = llvm.call @malloc(%347) : (i64) -> !llvm.ptr<i8>
    %349 = llvm.bitcast %348 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %350 = llvm.ptrtoint %349 : !llvm.ptr<i64> to i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.sub %346, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.urem %353, %346  : i64
    %355 = llvm.sub %353, %354  : i64
    %356 = llvm.inttoptr %355 : i64 to !llvm.ptr<i64>
    %357 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %358 = llvm.insertvalue %349, %357[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %359 = llvm.insertvalue %356, %358[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.insertvalue %360, %359[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %362 = llvm.insertvalue %337, %361[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %363 = llvm.insertvalue %338, %362[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %364 = llvm.insertvalue %339, %363[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %365 = llvm.insertvalue %341, %364[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %366 = llvm.insertvalue %339, %365[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %367 = llvm.insertvalue %340, %366[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%368 : i64)
  ^bb43(%371: i64):  // 2 preds: ^bb42, ^bb50
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb44, ^bb51
  ^bb44:  // pred: ^bb43
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%373 : i64)
  ^bb45(%376: i64):  // 2 preds: ^bb44, ^bb49
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb46, ^bb50
  ^bb46:  // pred: ^bb45
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%378 : i64)
  ^bb47(%381: i64):  // 2 preds: ^bb46, ^bb48
    %382 = llvm.icmp "slt" %381, %379 : i64
    llvm.cond_br %382, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %383 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %384 = llvm.mlir.constant(2 : index) : i64
    %385 = llvm.mul %371, %384  : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mul %376, %386  : i64
    %388 = llvm.add %385, %387  : i64
    %389 = llvm.add %388, %381  : i64
    %390 = llvm.getelementptr %383[%389] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %390 : !llvm.ptr<i64>
    %391 = llvm.add %381, %380  : i64
    llvm.br ^bb47(%391 : i64)
  ^bb49:  // pred: ^bb47
    %392 = llvm.add %376, %375  : i64
    llvm.br ^bb45(%392 : i64)
  ^bb50:  // pred: ^bb45
    %393 = llvm.add %371, %370  : i64
    llvm.br ^bb43(%393 : i64)
  ^bb51:  // pred: ^bb43
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%394 : i64)
  ^bb52(%397: i64):  // 2 preds: ^bb51, ^bb62
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%399 : i64)
  ^bb54(%402: i64):  // 2 preds: ^bb53, ^bb61
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %404 = llvm.mlir.constant(0 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%404 : i64)
  ^bb56(%407: i64):  // 2 preds: ^bb55, ^bb60
    %408 = llvm.icmp "slt" %407, %405 : i64
    llvm.cond_br %408, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%409 : i64)
  ^bb58(%412: i64):  // 2 preds: ^bb57, ^bb59
    %413 = llvm.icmp "slt" %412, %410 : i64
    llvm.cond_br %413, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %414 = llvm.extractvalue %336[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.mlir.constant(4 : index) : i64
    %416 = llvm.mul %397, %415  : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mul %402, %417  : i64
    %419 = llvm.add %416, %418  : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mul %407, %420  : i64
    %422 = llvm.add %419, %421  : i64
    %423 = llvm.add %422, %412  : i64
    %424 = llvm.getelementptr %414[%423] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %425 = llvm.load %424 : !llvm.ptr<i32>
    %426 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %427 = llvm.mlir.constant(2 : index) : i64
    %428 = llvm.mul %402, %427  : i64
    %429 = llvm.mlir.constant(2 : index) : i64
    %430 = llvm.mul %407, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.add %431, %412  : i64
    %433 = llvm.getelementptr %426[%432] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %434 = llvm.load %433 : !llvm.ptr<i64>
    %435 = llvm.icmp "slt" %434, %11 : i64
    %436 = llvm.select %435, %11, %434 : i1, i64
    %437 = llvm.extractvalue %336[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.mlir.constant(4 : index) : i64
    %439 = llvm.mul %436, %438  : i64
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mul %402, %440  : i64
    %442 = llvm.add %439, %441  : i64
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mul %407, %443  : i64
    %445 = llvm.add %442, %444  : i64
    %446 = llvm.add %445, %412  : i64
    %447 = llvm.getelementptr %437[%446] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %448 = llvm.load %447 : !llvm.ptr<i32>
    %449 = llvm.icmp "sgt" %425, %448 : i32
    %450 = llvm.select %449, %397, %436 : i1, i64
    %451 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mul %402, %452  : i64
    %454 = llvm.mlir.constant(2 : index) : i64
    %455 = llvm.mul %407, %454  : i64
    %456 = llvm.add %453, %455  : i64
    %457 = llvm.add %456, %412  : i64
    %458 = llvm.getelementptr %451[%457] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %450, %458 : !llvm.ptr<i64>
    %459 = llvm.add %412, %411  : i64
    llvm.br ^bb58(%459 : i64)
  ^bb60:  // pred: ^bb58
    %460 = llvm.add %407, %406  : i64
    llvm.br ^bb56(%460 : i64)
  ^bb61:  // pred: ^bb56
    %461 = llvm.add %402, %401  : i64
    llvm.br ^bb54(%461 : i64)
  ^bb62:  // pred: ^bb54
    %462 = llvm.add %397, %396  : i64
    llvm.br ^bb52(%462 : i64)
  ^bb63:  // pred: ^bb52
    %463 = llvm.mlir.constant(3 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.mlir.null : !llvm.ptr<i64>
    %466 = llvm.getelementptr %465[%463] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %467 = llvm.ptrtoint %466 : !llvm.ptr<i64> to i64
    %468 = llvm.mlir.constant(16 : index) : i64
    %469 = llvm.add %467, %468  : i64
    %470 = llvm.call @malloc(%469) : (i64) -> !llvm.ptr<i8>
    %471 = llvm.bitcast %470 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %472 = llvm.ptrtoint %471 : !llvm.ptr<i64> to i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.sub %468, %473  : i64
    %475 = llvm.add %472, %474  : i64
    %476 = llvm.urem %475, %468  : i64
    %477 = llvm.sub %475, %476  : i64
    %478 = llvm.inttoptr %477 : i64 to !llvm.ptr<i64>
    %479 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %480 = llvm.insertvalue %471, %479[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.insertvalue %478, %480[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.insertvalue %482, %481[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %484 = llvm.insertvalue %463, %483[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %485 = llvm.insertvalue %464, %484[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.mlir.constant(3 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%486 : i64)
  ^bb64(%489: i64):  // 2 preds: ^bb63, ^bb65
    %490 = llvm.icmp "slt" %489, %487 : i64
    llvm.cond_br %490, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %491 = llvm.extractvalue %485[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %492 = llvm.getelementptr %491[%489] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %10, %492 : !llvm.ptr<i64>
    %493 = llvm.add %489, %488  : i64
    llvm.br ^bb64(%493 : i64)
  ^bb66:  // pred: ^bb64
    %494 = llvm.mlir.constant(3 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.mlir.null : !llvm.ptr<i64>
    %497 = llvm.getelementptr %496[%494] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %498 = llvm.ptrtoint %497 : !llvm.ptr<i64> to i64
    %499 = llvm.mlir.constant(16 : index) : i64
    %500 = llvm.add %498, %499  : i64
    %501 = llvm.call @malloc(%500) : (i64) -> !llvm.ptr<i8>
    %502 = llvm.bitcast %501 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %503 = llvm.ptrtoint %502 : !llvm.ptr<i64> to i64
    %504 = llvm.mlir.constant(1 : index) : i64
    %505 = llvm.sub %499, %504  : i64
    %506 = llvm.add %503, %505  : i64
    %507 = llvm.urem %506, %499  : i64
    %508 = llvm.sub %506, %507  : i64
    %509 = llvm.inttoptr %508 : i64 to !llvm.ptr<i64>
    %510 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %511 = llvm.insertvalue %502, %510[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.insertvalue %509, %511[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.insertvalue %513, %512[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.insertvalue %494, %514[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.insertvalue %495, %515[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.mlir.constant(3 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%517 : i64)
  ^bb67(%520: i64):  // 2 preds: ^bb66, ^bb68
    %521 = llvm.icmp "slt" %520, %518 : i64
    llvm.cond_br %521, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %522 = llvm.extractvalue %485[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %523 = llvm.getelementptr %522[%520] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %524 = llvm.load %523 : !llvm.ptr<i64>
    %525 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %526 = llvm.load %525 : !llvm.ptr<i64>
    %527 = llvm.mul %524, %526  : i64
    %528 = llvm.extractvalue %516[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.getelementptr %528[%520] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %527, %529 : !llvm.ptr<i64>
    %530 = llvm.add %520, %519  : i64
    llvm.br ^bb67(%530 : i64)
  ^bb69:  // pred: ^bb67
    %531 = llvm.mlir.constant(3 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    %533 = llvm.mlir.null : !llvm.ptr<i1>
    %534 = llvm.getelementptr %533[%531] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %535 = llvm.ptrtoint %534 : !llvm.ptr<i1> to i64
    %536 = llvm.mlir.constant(16 : index) : i64
    %537 = llvm.add %535, %536  : i64
    %538 = llvm.call @malloc(%537) : (i64) -> !llvm.ptr<i8>
    %539 = llvm.bitcast %538 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %540 = llvm.ptrtoint %539 : !llvm.ptr<i1> to i64
    %541 = llvm.mlir.constant(1 : index) : i64
    %542 = llvm.sub %536, %541  : i64
    %543 = llvm.add %540, %542  : i64
    %544 = llvm.urem %543, %536  : i64
    %545 = llvm.sub %543, %544  : i64
    %546 = llvm.inttoptr %545 : i64 to !llvm.ptr<i1>
    %547 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %548 = llvm.insertvalue %539, %547[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %549 = llvm.insertvalue %546, %548[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %550 = llvm.mlir.constant(0 : index) : i64
    %551 = llvm.insertvalue %550, %549[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %552 = llvm.insertvalue %531, %551[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %553 = llvm.insertvalue %532, %552[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %554 = llvm.mlir.constant(0 : index) : i64
    %555 = llvm.mlir.constant(3 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%554 : i64)
  ^bb70(%557: i64):  // 2 preds: ^bb69, ^bb71
    %558 = llvm.icmp "slt" %557, %555 : i64
    llvm.cond_br %558, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %559 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %560 = llvm.getelementptr %559[%557] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %561 = llvm.load %560 : !llvm.ptr<i64>
    %562 = llvm.extractvalue %516[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %563 = llvm.getelementptr %562[%557] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %564 = llvm.load %563 : !llvm.ptr<i64>
    %565 = llvm.icmp "eq" %561, %564 : i64
    %566 = llvm.extractvalue %553[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %567 = llvm.getelementptr %566[%557] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %565, %567 : !llvm.ptr<i1>
    %568 = llvm.add %557, %556  : i64
    llvm.br ^bb70(%568 : i64)
  ^bb72:  // pred: ^bb70
    %569 = llvm.mlir.constant(3 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    %571 = llvm.mlir.null : !llvm.ptr<i64>
    %572 = llvm.getelementptr %571[%569] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %573 = llvm.ptrtoint %572 : !llvm.ptr<i64> to i64
    %574 = llvm.mlir.constant(16 : index) : i64
    %575 = llvm.add %573, %574  : i64
    %576 = llvm.call @malloc(%575) : (i64) -> !llvm.ptr<i8>
    %577 = llvm.bitcast %576 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %578 = llvm.ptrtoint %577 : !llvm.ptr<i64> to i64
    %579 = llvm.mlir.constant(1 : index) : i64
    %580 = llvm.sub %574, %579  : i64
    %581 = llvm.add %578, %580  : i64
    %582 = llvm.urem %581, %574  : i64
    %583 = llvm.sub %581, %582  : i64
    %584 = llvm.inttoptr %583 : i64 to !llvm.ptr<i64>
    %585 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %586 = llvm.insertvalue %577, %585[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %587 = llvm.insertvalue %584, %586[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %588 = llvm.mlir.constant(0 : index) : i64
    %589 = llvm.insertvalue %588, %587[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %590 = llvm.insertvalue %569, %589[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %591 = llvm.insertvalue %570, %590[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.mlir.constant(3 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%592 : i64)
  ^bb73(%595: i64):  // 2 preds: ^bb72, ^bb74
    %596 = llvm.icmp "slt" %595, %593 : i64
    llvm.cond_br %596, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %597 = llvm.extractvalue %553[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %598 = llvm.getelementptr %597[%595] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %599 = llvm.load %598 : !llvm.ptr<i1>
    %600 = llvm.extractvalue %485[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %601 = llvm.getelementptr %600[%595] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %602 = llvm.load %601 : !llvm.ptr<i64>
    %603 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %604 = llvm.getelementptr %603[%595] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %605 = llvm.load %604 : !llvm.ptr<i64>
    %606 = llvm.select %599, %602, %605 : i1, i64
    %607 = llvm.extractvalue %591[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %608 = llvm.getelementptr %607[%595] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %606, %608 : !llvm.ptr<i64>
    %609 = llvm.add %595, %594  : i64
    llvm.br ^bb73(%609 : i64)
  ^bb75:  // pred: ^bb73
    %610 = llvm.mlir.constant(2 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    %612 = llvm.mlir.constant(2 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.mlir.constant(2 : index) : i64
    %615 = llvm.mlir.constant(4 : index) : i64
    %616 = llvm.mlir.null : !llvm.ptr<i64>
    %617 = llvm.getelementptr %616[%615] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %618 = llvm.ptrtoint %617 : !llvm.ptr<i64> to i64
    %619 = llvm.mlir.constant(16 : index) : i64
    %620 = llvm.add %618, %619  : i64
    %621 = llvm.call @malloc(%620) : (i64) -> !llvm.ptr<i8>
    %622 = llvm.bitcast %621 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %623 = llvm.ptrtoint %622 : !llvm.ptr<i64> to i64
    %624 = llvm.mlir.constant(1 : index) : i64
    %625 = llvm.sub %619, %624  : i64
    %626 = llvm.add %623, %625  : i64
    %627 = llvm.urem %626, %619  : i64
    %628 = llvm.sub %626, %627  : i64
    %629 = llvm.inttoptr %628 : i64 to !llvm.ptr<i64>
    %630 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %631 = llvm.insertvalue %622, %630[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %632 = llvm.insertvalue %629, %631[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %633 = llvm.mlir.constant(0 : index) : i64
    %634 = llvm.insertvalue %633, %632[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %635 = llvm.insertvalue %610, %634[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %636 = llvm.insertvalue %611, %635[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %637 = llvm.insertvalue %612, %636[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %638 = llvm.insertvalue %614, %637[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %639 = llvm.insertvalue %612, %638[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %640 = llvm.insertvalue %613, %639[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %641 = llvm.mlir.constant(0 : index) : i64
    %642 = llvm.mlir.constant(2 : index) : i64
    %643 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%641 : i64)
  ^bb76(%644: i64):  // 2 preds: ^bb75, ^bb83
    %645 = llvm.icmp "slt" %644, %642 : i64
    llvm.cond_br %645, ^bb77, ^bb84
  ^bb77:  // pred: ^bb76
    %646 = llvm.mlir.constant(0 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    %648 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%646 : i64)
  ^bb78(%649: i64):  // 2 preds: ^bb77, ^bb82
    %650 = llvm.icmp "slt" %649, %647 : i64
    llvm.cond_br %650, ^bb79, ^bb83
  ^bb79:  // pred: ^bb78
    %651 = llvm.mlir.constant(0 : index) : i64
    %652 = llvm.mlir.constant(2 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%651 : i64)
  ^bb80(%654: i64):  // 2 preds: ^bb79, ^bb81
    %655 = llvm.icmp "slt" %654, %652 : i64
    llvm.cond_br %655, ^bb81, ^bb82
  ^bb81:  // pred: ^bb80
    %656 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %657 = llvm.mlir.constant(2 : index) : i64
    %658 = llvm.mul %644, %657  : i64
    %659 = llvm.mlir.constant(2 : index) : i64
    %660 = llvm.mul %13, %659  : i64
    %661 = llvm.add %658, %660  : i64
    %662 = llvm.add %661, %654  : i64
    %663 = llvm.getelementptr %656[%662] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %664 = llvm.load %663 : !llvm.ptr<i64>
    %665 = llvm.extractvalue %640[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %666 = llvm.mlir.constant(2 : index) : i64
    %667 = llvm.mul %644, %666  : i64
    %668 = llvm.mlir.constant(2 : index) : i64
    %669 = llvm.mul %649, %668  : i64
    %670 = llvm.add %667, %669  : i64
    %671 = llvm.add %670, %654  : i64
    %672 = llvm.getelementptr %665[%671] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %664, %672 : !llvm.ptr<i64>
    %673 = llvm.add %654, %653  : i64
    llvm.br ^bb80(%673 : i64)
  ^bb82:  // pred: ^bb80
    %674 = llvm.add %649, %648  : i64
    llvm.br ^bb78(%674 : i64)
  ^bb83:  // pred: ^bb78
    %675 = llvm.add %644, %643  : i64
    llvm.br ^bb76(%675 : i64)
  ^bb84:  // pred: ^bb76
    %676 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %677 = llvm.insertvalue %201, %676[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %678 = llvm.insertvalue %640, %677[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %678 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %10, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %36, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %37 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %38 = llvm.extractvalue %37[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %39 = llvm.extractvalue %37[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %40 = llvm.mlir.constant(2 : i64) : i64
    %41 = llvm.mlir.constant(16 : i64) : i64
    %42 = llvm.call @malloc(%41) : (i64) -> !llvm.ptr<i8>
    %43 = llvm.bitcast %42 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.call @omTensorCreateUntyped(%44) : (i64) -> !llvm.ptr<i8>
    %46 = llvm.mlir.constant(1 : i64) : i64
    %47 = llvm.extractvalue %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.bitcast %47 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %49 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.bitcast %49 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%45, %46, %48, %50) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %51 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%45, %51) : (!llvm.ptr<i8>, i64) -> ()
    %52 = llvm.call @omTensorGetShape(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %53 = llvm.call @omTensorGetStrides(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %54 = llvm.mlir.constant(0 : i64) : i64
    %55 = llvm.extractvalue %38[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.getelementptr %52[%54] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %55, %56 : !llvm.ptr<i64>
    %57 = llvm.extractvalue %38[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.getelementptr %53[%54] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %57, %58 : !llvm.ptr<i64>
    %59 = llvm.mlir.constant(1 : i64) : i64
    %60 = llvm.extractvalue %38[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %52[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %38[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %53[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(2 : i64) : i64
    %65 = llvm.extractvalue %38[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %52[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %38[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %53[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(3 : i64) : i64
    %70 = llvm.extractvalue %38[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %52[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %38[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %53[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(0 : i64) : i64
    %75 = llvm.getelementptr %43[%74] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %45, %75 : !llvm.ptr<ptr<i8>>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.call @omTensorCreateUntyped(%76) : (i64) -> !llvm.ptr<i8>
    %78 = llvm.mlir.constant(1 : i64) : i64
    %79 = llvm.extractvalue %39[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.bitcast %79 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %81 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%77, %78, %80, %82) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %83 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%77, %83) : (!llvm.ptr<i8>, i64) -> ()
    %84 = llvm.call @omTensorGetShape(%77) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %85 = llvm.call @omTensorGetStrides(%77) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %86 = llvm.mlir.constant(0 : i64) : i64
    %87 = llvm.extractvalue %39[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.getelementptr %84[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.extractvalue %39[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.getelementptr %85[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.mlir.constant(1 : i64) : i64
    %92 = llvm.extractvalue %39[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.getelementptr %84[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.extractvalue %39[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %85[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.mlir.constant(2 : i64) : i64
    %97 = llvm.extractvalue %39[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.getelementptr %84[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.extractvalue %39[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %85[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.mlir.constant(1 : i64) : i64
    %102 = llvm.getelementptr %43[%101] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %77, %102 : !llvm.ptr<ptr<i8>>
    %103 = llvm.call @omTensorListCreate(%43, %40, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %103 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<68 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<68 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

